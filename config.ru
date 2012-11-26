require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { :namespace=> 'sidekiq', :size => 1 }
end

require 'sidekiq/web'
require 'json'

Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == ENV['ADMIN_USER'] && password == ENV['ADMIN_PASS']
end 

run Sidekiq::Web
