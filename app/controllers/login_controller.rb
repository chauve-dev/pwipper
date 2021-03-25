class LoginController < ApplicationController
  def index
    @Users = Utilisateur.all
  end
end
