class DefaultController < ApplicationController
  def index
    if session[:current_user_id]
      @user = Utilisateur.find(session[:current_user_id])
      @users = Utilisateur.all
    else
      redirect_to '/login'
    end
  end
end
