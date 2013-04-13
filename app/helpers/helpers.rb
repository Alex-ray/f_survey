helpers do
	def current_user
		return nil unless session[:user_id].present?
		@current_user ||= User.find(session[:user_id])
	end

	def singed_in?
		surrent_user.present?
	end

  def sign_in(user)
    if user!= nil
      session[:user_id] = user.id
      current_user
    else
      @errors = "Username or password not valid"
    end
  end
end