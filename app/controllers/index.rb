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
<<<<<<< HEAD
  session[:user_id] = nil
=======
  session[]
end

get '/:survey_id/:token_id' do
  @survey = Survey.where("id = ?", params[:survey_id])
  @token = Token.where("id = ?", params[:token_id])
  erb :index
>>>>>>> 53372bc1c33c0cefaf56ada3fc9dc9ac232e462f
end