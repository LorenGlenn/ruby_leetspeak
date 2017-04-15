require('sinatra')
require('sinatra/reloader')
require('./lib/leet.rb')

get('/') do
  erb(:index)
end

post('/results') do
  word = params.fetch('word')
  @display = word.leet()
  erb(:results)
end
