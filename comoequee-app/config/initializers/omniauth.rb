# frozen_string_literal: true

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '75014731090-a47s3o86j1h56ednc04jmg5e024neckf.apps.googleusercontent.com', 'zWoYcnJ0pn316MukjvXvy8S7', client_options: { ssl: { ca_file: Rails.root.join('cacert.pem').to_s } }
end
