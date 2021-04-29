class FollowController < ApplicationController
  def follow
    param = params.require(:user_name)
    Relation.create(follower_id: session[:current_user_id], user_id: param)
    @icon = true
    redirect_to '/'
  end
  helper_method :follow
end
