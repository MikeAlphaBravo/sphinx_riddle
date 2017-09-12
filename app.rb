require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddle.rb')
require('pry')
tri = Riddle.new(@result)

get('/') do
  @question = tri.picker
  erb(:input)
end

post('/output') do
  @answer = params.fetch("user_answer")
  binding.pry
  if @answer == tri.result
  erb(:success)
  else erb(:failure)
  end
end
