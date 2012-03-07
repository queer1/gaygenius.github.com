use Rack::Static, :index => 'index.html'

run Proc.new {|env| [200, {'Content-Type' => 'text/html'}, ['Plain Jane']]}
