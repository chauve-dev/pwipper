class DefaultController < ApplicationController
  def index
    if session[:current_user_id]
      @pweep = Pweep.new
      @pweeps = Pweep.all
      @user = Utilisateur.find(session[:current_user_id])
      @users = Utilisateur.all
      @pourtags = Pourtag.all
    else
      redirect_to '/login'
    end
  end

  def newpweep
    puts params
    Pweep.create(body: params.require(:content), utilisateur_id: session[:current_user_id])
    redirect_to '/'
  end
end
