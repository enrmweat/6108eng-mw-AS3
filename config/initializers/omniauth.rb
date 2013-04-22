OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,'195260617264450','dfe1ec9d71ed3ffa22a1b8d95dabc19b'
end