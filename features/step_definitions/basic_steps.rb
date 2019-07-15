When("I visit the site") do
    visit root_path
  end

When("I click on {string}") do |string|
  click_on string
end

When("I click on the {string} link") do |string|
  first(:link, string).click
end

When("I fill in {string} with {string}") do |field, input|
  fill_in field, with: input
end

When("I click {string} button") do |button|
  click_on button
end
