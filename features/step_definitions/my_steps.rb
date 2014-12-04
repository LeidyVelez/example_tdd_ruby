
Given(/^Ingreso a la aplicacion$/) do
   visit '/'
end
Given(/^Incio del juego$/) do
  visit '/comenzarJuego'
end

Then(/^debo ver el texto "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

When(/^ingreso "(.*?)" en "(.*?)"$/) do |value,field|
  fill_in(field, :with => value)
end
When(/^presiono "(.*?)"$/) do |name|
   click_button(name)
end

Given(/^Ingreso al juego e ingreso letra$/) do
  visit '/comenzarJuego'
  fill_in("letra", :with => "C")
end

