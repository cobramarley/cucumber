Given(/^I am on the YouTube home page$/) do
  visit ('http://www.youtube.com')
end

When(/^I search for "(.*?)"$/) do |search_term|
  fill_in 'search_query', :with => search_term
  click_on 'search-icon-legacy'
end

Then(/^videos of large rodents are returned$/) do
  puts page.inspect
  page.should have_content 'Making Friends'
end

Then("videos of forex are returned") do
  puts page.inspect
  page.should have_content 'DAY TRADING'
end

Then("Videos are returned") do
  puts page.inspect
  page.should have_content 'Cristo'
end

Then("I click on the first video about Cristo") do
  click_on 'LA PASION DE CRISTO PELICULA COMPLETA EN ESPAÑOL'
end

When("I click on play") do
  click_on(class: 'ytp-play-button ytp-button')
end

Then("I watch Cristo for {int} seconds") do |int|
  click_on(class: 'ytp-play-button ytp-button')
  sleep(int)
end
