Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end