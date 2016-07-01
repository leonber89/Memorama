Given(/^configurado el tablero de "(.*?)"$/) do |tamano|
  visit '/'
  fill_in("tamano", :with => tamano)
end

When(/^inicio el juego$/) do
  click_button("iniciar")
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~/#{text}/m
end
