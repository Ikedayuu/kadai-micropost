class LikesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = User.find(params[:micropost_id])
    current_user.like(user)
    flash[:success] = '投稿にいいねしました。'
    redirect_to micropost
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.unlike(user)
    flash[:success] = '投稿のいいねを解除しました。'
    redirect_to micropost
  end
end 
