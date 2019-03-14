class LikesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
#    micropost = Micropost.find(params[:micropost_id])
#    current_user.like(micropost)
    micropost = Micropost.find_by(id: params[:iine_id])
    current_user.like(micropost)
    flash[:success] = '投稿にいいねしました。'
    redirect_to root_url
  end

  def destroy
#    micropost = Micropost.find(params[:micropost_id])
#    current_user.like(micropost)
    micropost = Micropost.find_by(id: params[:iine_id])
    current_user.unlike(micropost)
    flash[:success] = '投稿のいいねを解除しました。'
    redirect_to root_url
  end
end 
