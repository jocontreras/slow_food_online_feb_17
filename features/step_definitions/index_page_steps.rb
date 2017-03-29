Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^the following restaurant exists$/) do |table|
  table.hashes.each do |hash|
   Restaurant.create!(hash)
  end
end
