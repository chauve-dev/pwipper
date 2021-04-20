class DefaultController < ApplicationController
  def index
    if session[:current_user_id]
      @pweep = Pweep.new
      @user = Utilisateur.find(session[:current_user_id])
      @users = Utilisateur.all
      @pourtags = Pourtag.all
    else
      redirect_to '/login'
    end
  end

  def create
    @pweep = Pweep.create(params.require(:pweep).permit(:body), session[:current_user_id])
    redirect_to '/'
  end
end
