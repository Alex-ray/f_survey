get '/' do
  erb :index
end

get '/:survey_id' do
  @survey = Survey.where("id = ?", params[:survey_id])
  erb :index
end

post '/signup' do
  @user = User.create(params[:user])
end

post 'login' do
  user = User.authenticate(params[:email], params[:password])

  sign_in(user)
  if user == nil
    @errors
  end
end

post '/logout' do
  session[]
end

get '/:survey_id/:token_id' do
  @survey = Survey.where("id = ?", params[:survey_id])
  @token = Token.where("id = ?", params[:token_id])
  erb :index
end