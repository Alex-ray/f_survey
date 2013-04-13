helpers do
	
	def current_user
		return nil unless session[:user_id].present?
		@current_user ||= User.find(session[:user_id])
	end

	def singed_in?
		surrent_user.present?
	end
	
end