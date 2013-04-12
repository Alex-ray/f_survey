get '/' do
  erb :index
end

get '/:survey_id' do
  @survey = Survey.where("id = ?", params[:survey_id])
  erb :index
end

post '/signup' do
  puts params
  @user = User.create params
end

post 'login' do

end