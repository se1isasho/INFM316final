Given(/^the following books exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |book|
      Book.create!(book)
  end
end
Then(/^the author of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  Book.find_by_title(arg1).author == arg2
end


Then /(.*) seed books should exist/ do | n_seeds |
  expect(Book.count).to eq(n_seeds.to_i)
end

Then /I should see all the books/ do
  rows = page.all('#books tr').size - 1
  expect(rows).to eq(Book.count())
end