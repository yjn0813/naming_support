class SessionsController < ApplicationController
  def create
    user = User.find_by(provider: auth[:provider], uid: auth[:uid]) || User.create_from_auth!(auth)
    session[:user_id] = user.id
    redirect_to '/', notice: 'sign in!'
  end
	def callback
    auth = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth['provider'], auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
  private

  def auth
    request.env['omniauth.auth']
  end
end