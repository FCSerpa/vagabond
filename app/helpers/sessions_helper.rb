module SessionsHelper
	def login(user)
	    session[:user_id] = user.id
	    @current_user = user
  	end

  	def current_user
  		# binding.pry
	    @current_user ||= session[:user_id] && User.find(session[:user_id])
	    # binding.pry
  	end

  	def logged_in?
	    if current_user == nil
		    redirect_to "/sign_in"
	    end
  	end

  	def logout
	    @current_user = session[:user_id] = nil
  	end
end
