Given(/^I am on the login page$/) do
  visit "/"
end

Given(/^I am on the menu page$/) do
  visit "/main"
end

Given /^I am signed in with provider google/ do
  Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google]
  visit "/auth/google_oauth2"
end

Given /^I am on the restaurants page/ do
  @oi = Restaurant.create(name:"Restaurante Test", location:"Praça do Relógio Solar, Travessa 8, 300", horario:
  	"Segunda à sexta-feira: Café: 07:00 às 08:30 / Almoço: 11:15 às 14:15 / Jantar: 17:30 às 19:45 , Sábado: Café: 07:30 às 09:00/ Almoço: 11:15 às 14:15 ,
  	Domingo: Café: 08:00 às 09:30 / Almoço: 12:00 às 14:15", telefone: "(11) 3091-3318")
  visit "/restaurants"
end
