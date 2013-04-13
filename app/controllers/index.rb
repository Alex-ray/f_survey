get '/' do
  erb :index
end

get '/:survey_id' do
  @survey = Survey.where("id = ?", params[:survey_id])
  erb :index
end

post '/signup' do
  puts params[:user].inspect
  @user = User.create(params[:user])
end

post 'login' do
end

post '/new_survey' do
	
end