get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:survey_id' do
  @survey = Survey.where("id = ?", params[:survey_id])
  erb :index
end