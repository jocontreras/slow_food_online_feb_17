Given(/^I am on the sign in page$/) do
  visit new_user_session_path
end

Given(/^the following user exist$/) do |table|
  table.hashes.each do |hash|
   create(:user, hash)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end
