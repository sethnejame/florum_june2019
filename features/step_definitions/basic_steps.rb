When("I visit the site") do
  visit root_path
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Given("I click {string}") do |element|
  click_on element
end

When("I fill the {string} with {string}") do |field, input|
  fill_in field, with: input
end



