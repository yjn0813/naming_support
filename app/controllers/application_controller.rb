class ApplicationController < ActionController::Base
 	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

	def current_user  
    	@current_user ||= User.find(session[:user_id]) if session[:user_id]  
	end
	def twitter_client
    	twitter_client = Twitter::REST::Client.new do |config|
			config.consumer_key        = "mVYyeyXFydBtisgTKHxoJThjw"
      		config.consumer_secret     = "IyJXS9i1YAuyMyM4gdvFmANgblkI9StLRgVMTJ2rBNifrzPj10"
      		config.access_token        = "4900130930-vueew83PEBUCxAeHKVQweNEdlsuNPhREtY0iayn"
      		config.access_token_secret = "yltHgujLTP5uroivixElIsriX4oKiNBYjfQN4t1CRW5ER"
		end
    	@name = params[:name]
		user = twitter_client.user_search(@name).first
		if user
	  @user.provider = user.nproviderame
      @user.uid = user.uid
      @user.name = user.name
      @user.image = user.image
      @user.token = user.token
      @user.secret = user.secret
    else
  	end
	end
	
 	helper_method :current_user
 	helper_method :twitter_client
end