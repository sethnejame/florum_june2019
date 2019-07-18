Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should not see {string}") do |content|
  expect(page).not_to have_content content  
end
  
Then("I should be on Posts index page") do
  expect(current_path).to eq posts_path
end

Then("I should be on Profile page") do
  user = User.last
  expect(current_path).to eq user_path(user.id)
end