class User < ActiveRecord::Base
	has_many :tips
	belongs_to :place
	
	has_secure_password
	
  	def self.confirm(params)
    	@user = User.find_by({email: params[:email]})
    	@user.try(:authenticate, params[:password])
  	end

end
