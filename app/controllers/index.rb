get '/' do
  erb :index
end

get '/:survey_id' do
  @survey = Survey.find(params[:survey_id])
  erb :index
end

post '/signup' do
  user = User.create(params[:user])
  sign_in(user)
  if user == nil
    "Username or password not valid"
  else
    "false"
  end
end

post '/login' do
  user = User.authenticate(params[:user])
  sign_in(user)
  if user == nil
    "Username or password not valid"
  else
    "false"
  end
end

post '/logout' do
  session[:user_id] = nil
end