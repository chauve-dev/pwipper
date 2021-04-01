class DefaultController < ApplicationController
  def index
    @users = Utilisateur.all
  end
end
