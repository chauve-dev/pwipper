class DefaultController < ApplicationController
  def index
    @users = Utilisateur.all
    redirect_to '/login' if defined?(session[:current_user_id])
  end
end
