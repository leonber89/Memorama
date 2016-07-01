Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^selecciono "(.*?)"$/) do |name|
  click_button(name)
end

Given(/^configurado el tablero de "(.*?)" x "(.*?)"$/) do |rows, columns|
  visit '/'
  fill_in("rows", :with => rows)
  fill_in("columns", :with => columns)
end

When(/^inicio el juego$/) do
  click_button("default")
end

When(/^todos los pares encontrados "(.*?)"$/) do |gane|
   last_response.body.should =~ /#{gane}/m
end
