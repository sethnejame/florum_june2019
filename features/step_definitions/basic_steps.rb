When("I visit the site") do
    visit root_path
  end

Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("I click {string}") do |string|
  click_on string
end

When("I fill the {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end



