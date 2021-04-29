class FollowController < ApplicationController
  def follow
    param = params.require(:user_name)
    Relation.create(followerID: session[:current_user_id], utilisateurID: param)
    @icon = true
    redirect_to '/'
  end
  helper_method :follow
end
