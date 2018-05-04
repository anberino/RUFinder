OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '429039459046-qooibv84g3kcastj47e5st4enappjact.apps.googleusercontent.com', 'BlZj6B8I9703xFIKZjGeFz4I', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end