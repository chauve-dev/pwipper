class FollowController < ApplicationController
  def follow
    Relation.create(follower_id: session[:current_user_id], user_id: params.require(:user_id))
    redirect_to '/'
  end
  helper_method :follow
end
