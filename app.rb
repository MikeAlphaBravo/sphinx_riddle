require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddle.rb')
require('pry')
tri = Riddle.new(@question,@answer)

get('/') do
  @question = tri.picker
  erb(:input)
end

post('/output') do
  answer1 = params.fetch("user_answer1")
  answer2 = params.fetch("user_answer2")
  if answer1 == tri.result[0] && answer2 == tri.result[1]
  erb(:success)
  else erb(:failure)
  end
end
