more_books = [
  {:title => 'Да убиеш присмехулник', :genre => 'DRAMA',
    :publish_date => '11-Jul-1960', :isbn => 'aqq12aa'},
  {:title => 'Хамлет', :genre => 'DRAMA',
    :publish_date => '13-Apr-1609', :isbn => 'aw122aa'},
  {:title => 'Да свирим на китара III част', :genre => 'ART',
    :publish_date => '10-Aug-2017', :isbn => 'aw555aa'},
  {:title => 'Artists : Their Lives and Works', :genre => 'ART',
    :publish_date => '11-Oct-2017', :isbn => 'ccc12aa'},
  {:title => 'Дневникът на Мишо', :genre => 'ANIME',
    :publish_date => '12-Dec-2016', :isbn => 'jju12aa'},
  {:title => 'Shogun', :genre => 'ANIME',
    :publish_date => '11-Feb-2010', :isbn => 'jra44aa'},
  {:title => 'Някой, който бди над мен', :genre => 'LOVE',
    :publish_date => '8-Mar-2017', :isbn => 'jrkkkaa'},
  {:title => 'Сън в лятна нощ', :genre => 'LOVE',
    :publish_date => '1-Jan-1605', :isbn => 'jra4411'},
  {:title => 'Проектиране на пречиствателни станции за отпадъчни води', :genre => 'TECHNICAL',
    :publish_date => '5-Apr-2017', :isbn => 'iiia44aa'},
  {:title => 'Автомобилна електро-революция. E-mobility revolution', :genre => 'TECHNICAL',
    :publish_date => '6-MAY-2015', :isbn => 'asas4rr'}
  
]

more_books.each do |book|
  Book.create!(book)
end