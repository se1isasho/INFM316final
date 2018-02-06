class BooksController < ApplicationController
  def index
    
    sort = params[:sort]

    case sort
    when 'title'
      ordering,@title_header = {:title => :asc}, 'hilite'
    when 'publish_date'      
      ordering,@date_header = {:publish_date => :asc}, 'hilite'
    end
    
    # edit the index method of the movies_controller.rb
    @all_genres = Book.all_genres 
    @selected_genres = params[:genres] || session[:genres] || {}
    if @selected_genres == {}   
      @selected_genres = Hash[@all_genres.map {|genre| [genre, genre]}]
    end
    if params[:sort] != session[:sort] or params[:genres] != session[:genres]
      session[:sort] = sort
      session[:genres] = @selected_genres
      redirect_to :sort => sort, :genres => @selected_genres and return
    end

    @books = Book.where(genre: @selected_genres.keys).order(ordering)
    #@books = Book.order(ordering)
  end
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @book = Book.find(id) # look up movie by unique ID
    # will render app/views/books/show.html.haml by default
  end
    # add to the books_controller.rb
  def new
    @book = Book.new
    # default: render 'new' template
  end
  # in movies_controller.rb
  def create
    params.require(:book)
    permitted = params[:book].permit(:title,:genre,:publish_date,:isbn, :description, :author)
    @book = Book.create!(permitted)
    flash[:notice] = "#{@book.title} was successfully created."
    redirect_to books_path
  end
  # in movies_controller.rb

  def edit
    @book = Book.find params[:id]
  end

  def update
   @book = Book.find params[:id]
    params.require(:book)
    permitted = params[:book].permit(:title,:genre,:publish_date,:isbn, :description, :author)
    @book.update_attributes!(permitted)
    flash[:notice] = "#{@book.title} was successfully updated."
    redirect_to book_path(@book)
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book '#{@book.title}' deleted."
    redirect_to books_path
  end
  # movies_controller.rb
  def search_similar_books
  @book = Book.find(params[:id])
  if @book.author.nil? || @book.author.empty?
    flash[:warning]= "'#{@book.title}' has no author info"
    redirect_to books_path
  else
    @books = Book.similar_books(@book)
  end
  end
end