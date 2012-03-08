use Rack::Static, :index => 'index.html', :urls => ['/cv']

run Proc.new {|env| [200, {'Content-Type' => 'text/html'}, ['Plain Jane']]}
