When("I visit the site") do
  visit root_path
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Given("I am logged in as {string}") do |name|
  user = User.find_by name: name
  login_as user, scope: :user
end

Given("I click {string}") do |string|
  click_on string
end

When("I fill the {string} with {string}") do |field, input|
  fill_in field, with: input
end



