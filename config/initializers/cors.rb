# Be sure to restart your server when you modify this file.

# Enable CORS for API v0 (logging is only activated when debug is enabled)
debug_cors = ENV["DEBUG_CORS"].present? ? true : false
Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: debug_cors, logger: (-> { Rails.logger }) do
  allow do
    # origins do |source, _env|
    #   source # echo back the client's `Origin` header instead of using `*`
    # end
    origins "*"
    resource "/articles", headers: :any, methods: [:get]
    resource "/articles/*", headers: :any, methods: [:get]
    resource "/tags", headers: :any, methods: [:get]
    resource "/tags/*", headers: :any, methods: [:get]
    resource "/simplecodingapi/signup", headers: :any, methods: [:post]
    resource "/simplecodingapi/login", headers: :any, methods: [:post]
    resource "/search/feed_content", headers: :any, methods: :any
    # allowed public APIs
    %w[articles comments listings podcast_episodes tags users videos].each do |resource_name|
      # allow read operations, disallow custom headers (eg. api-key) and enable preflight caching
      # NOTE: Chrome caps preflight caching at 2 hours, Firefox at 24 hours
      # see https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age#Directives
      resource "/api/#{resource_name}/*", methods: %i[head get options], headers: [], max_age: 2.hours.to_i
    end
  end
end
