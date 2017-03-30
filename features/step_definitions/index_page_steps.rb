Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^a restaurant called "([^"]*)" exits$/) do |restaurant_name|
  FactoryGirl.create(:restaurant, name: restaurant_name)
end
