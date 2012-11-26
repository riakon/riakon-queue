require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { :namespace=> 'sk', :size => 1 }
end

require 'sidekiq/web'
require 'json'

Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == 'some_user' && password == 'some_pass'
end 

run Sidekiq::Web
