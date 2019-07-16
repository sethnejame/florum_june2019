When("I visit the site") do
    visit root_path
  end

When("I click on {string}") do |string|
  click_on string
end
