Given(/^I am on the login page$/) do
  visit "/"
end

Given(/^I am on the menu page$/) do
  visit "/main"
end

Given /^I am signed in with provider google/ do
  Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google]
  visit "/auth/google_oauth2"
  print("Teste mode? #{OmniAuth.config.test_mode}")
end
