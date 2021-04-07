class UtilisateursController < ApplicationController
  def new
    @utilisateur = Utilisateur.new
  end

  def create
    @utilisateur = Utilisateur.create(params.require(:utilisateur).permit(:nickname, :username, :email, :password, :bio, :avatar))
    redirect_to '/'
  end
end
