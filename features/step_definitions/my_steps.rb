Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^selecciono "(.*?)"$/) do |name|
  click_button(name)
end

Given(/^configurado el tablero de "(.*?)"$/) do |tamano|
  visit '/'
  fill_in("tamano", :with => tamano)
end

When(/^inicio el juego$/) do
  click_button("default")
end

When(/^todos los pares encontrados "(.*?)"$/) do |gane|
   last_response.body.should =~ /#{gane}/m
end
