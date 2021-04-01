class LoginController < ApplicationController
  def index
    @Users = Utilisateur.all
  end

  def login
    session[:current_user_id] = params[:id]
    redirect_to '/'
  end
end
