Koala.configure do |config|
  config.access_token = FACEBOOK_CONFIG["token_me"]
  config.app_access_token = FACEBOOK_CONFIG["token_app"]
  config.app_id = FACEBOOK_CONFIG["app_id"]
  config.app_secret = FACEBOOK_CONFIG["secret"]
  # See Koala::Configuration for more options, including details on how to send requests through
  # your own proxy servers.
end
