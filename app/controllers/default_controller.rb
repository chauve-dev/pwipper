class DefaultController < ApplicationController
  def index
    if session[:current_user_id]
      @user = Utilisateur.find_by_id(session[:current_user_id])
      if @user.nil?
        redirect_to '/login'
      end
      @pweep = Pweep.new
      @pweeps = if request.GET['pourtag'].nil?
        Pweep.all
      else
        Pweep.joins(:pourtag).where(pourtag: {label: request.GET['pourtag']})
                end
      @users = Utilisateur.all
      @pourtags = Pourtag.group(:label).order('COUNT(label) DESC').limit(10)
      @follow_icon = Relation.where(follower_id: session[:current_user_id]).distinct.pluck(:utilisateur_id)
    else
      redirect_to '/login'
    end
  end

  def newpweep
    Pweep.create(body: params.require(:content), utilisateur_id: session[:current_user_id])
    redirect_to '/'
  end
end
