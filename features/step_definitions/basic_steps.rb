When("I visit the site") do
  visit root_path
end

Given("the following user(s) exists") do |table|
  table.hashes.each do |user_hash|
    FactoryBot.create(:user, user_hash)
  end
end

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as user, scope: :user
  binding.pry
end

Given("I click {string}") do |string|
  click_on string
end

When("I fill the {string} with {string}") do |field, input|
  fill_in field, with: input
end

Then("show me the page") do
  save_and_open_page
end



