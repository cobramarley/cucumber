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
