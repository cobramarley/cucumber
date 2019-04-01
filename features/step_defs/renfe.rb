Given("I am on the Renfe home page") do
  visit ('http://www.renfe.com/')
end

When("I search for {string} on a specific day") do |string|
  fill_in 'IdOrigen', with: 'MALAGA MARIA ZAMBRANO'
  fill_in 'IdDestino', with: 'MADRID (TODAS)'
  fill_in '__fechaIdaVisual', with: '27/05/2019'
  fill_in '__fechaVueltaVisual', with: '29/05/2019'
  click_button 'Comprar'
end

Then("Available Trains are returned") do
  puts page.inspect
  page.should have_content 'A'
end
