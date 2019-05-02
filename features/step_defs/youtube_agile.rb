Given("I am on the Youtube home page") do
  visit 'https://www.youtube.com'
end

When("click button {string}") do |string|
  click_on string
end

When("I fill in {string} with {string}") do |string, string2|
	  fill_in string, with: string2
end

Then("I should see {string}") do |string|
	  page.should have_content string
end

Given("I am watching a video about {string}") do |string|
  visit 'https://www.youtube.com/watch?v=NWMS5wDSPs8&t'

end

When("I click on fullscreen") do
  click_on 'Pantalla completa'
end

Then("I should watch the video in fullscreen") do
  sleep 5
end

Then("It is done") do
  sleep 1
end

When("I click on class {string}") do |string|
  click_on string
end

Given("I wait {int} seconds") do |int|
  sleep(int)
end
