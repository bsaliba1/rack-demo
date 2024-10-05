require 'rack/reloader'

# Enables hot reloads
use Rack::Reloader

# Define how incoming requests should be handled
run do |env|
  query_params = Rack::Utils.parse_query(env["QUERY_STRING"])

  case env["REQUEST_PATH"]
  when "/"
    html = File.read("hello.html")
    [200, {'content-type' => 'text/html'}, [html]]
  when "/show_query_params"
    [200, {'content-type' => 'text/html'}, ["<h1>#{query_params}</h1>"]]
  else
    [404, {'content-type' => 'text/html'}, ["<h1>404 Not Found</h1>"]]
  end
end
