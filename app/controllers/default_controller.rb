class DefaultController < ApplicationController
  def index
    if session[:current_user_id]
      @pweep = Pweep.new
      if request.GET['pourtag'].nil?
        @pweeps = Pweep.all
      else
        @pweeps = Pweep.joins(:pourtag).where(pourtag: {label: request.GET['pourtag']})
      end

      @user = Utilisateur.find(session[:current_user_id])
      @users = Utilisateur.all
      @pourtags = Pourtag.group(:label).order('COUNT(label) DESC').limit(10)
    else
      redirect_to '/login'
    end
  end

  def newpweep
    Pweep.create(body: params.require(:content), utilisateur_id: session[:current_user_id])
    redirect_to '/'
  end
end
