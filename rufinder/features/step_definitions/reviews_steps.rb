OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:google] = {
  :provider => 'google',
  :uid => '1',
  :info => {
    :name => "Nathalia Borin",
    :email => "nathborin@test.com"
  },
  :credentials => {
    :token => "tokens",
    :expires_at => "2042343"
  },
  # etc.
}

Given /^I am signed in with provider google/ do
  Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google]
  visit "/auth/google_oauth2"
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end
