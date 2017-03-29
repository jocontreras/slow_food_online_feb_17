Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^I should see a "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
