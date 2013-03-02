OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  configure do |config|
      config.path_prefix = '/auth'
    end
  provider :facebook, '172690442879318', '6a635f94f7b91daf34aea7d01875851d'
end