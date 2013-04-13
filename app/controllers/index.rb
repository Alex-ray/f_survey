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
  puts user.inspect
  puts session[:user_id]
  if user == nil
    "Username or password not valid"
  else
    "false"
  end
end

post '/login' do
  user = User.authenticate(params[:user][:email], params[:user][:password])
  puts user
  sign_in(user)
  puts session[:user_id]
  if user == nil
    "Username or password not valid"
  else
    "false"
  end
end

post '/logout' do
  session[:user_id] = nil
  puts session[:user_id]
end

get '/:survey_id/:token_id' do
  @survey = Survey.where("id = ?", params[:survey_id])
  @token = Token.where("id = ?", params[:token_id])
  erb :index

end