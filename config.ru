require_relative './lib/racker'

app = Rack::Builder.new do
  use Rack::Reloader, 0
  use Rack::Static, urls: ['/stylesheets'], root: 'public'
  use Rack::Session::Cookie, key: 'rack.session', secret: 'secret'

  run Racker
end

run app
