OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
  :provider => 'google',
  :uid => '1',
  :info => {
    :name => "Eduwzin",
    :email => "eduwzin@gmail.com"
  },
  :credentials => {
    :token => "tokens",
    :expires_at => 0
  },
  # etc.
})
