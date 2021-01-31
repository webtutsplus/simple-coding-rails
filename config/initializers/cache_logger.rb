if Rails.env.development? && Rails.configuration.action_controller.perform_caching
  Rails.cache.silence!
  ActiveSupport::Cache::Store.logger = nil
  ActiveSupport::Cache::Store.logger.level = Logger::DEBUG
else
  Rails.cache.silence!
end
