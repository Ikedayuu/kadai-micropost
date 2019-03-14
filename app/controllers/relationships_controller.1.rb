class RelationshipsController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find_by(id: params[:post_id])
    current_user.like(micropost)
    flash[:success] = 'ユーザをフォローしました。'
    redirect_to user
  end

  def destroy
    micropost = Micropost.find_by(id: params[:post_id])
    current_user.like(micropost)
    flash[:success] = 'ユーザのフォローを解除しました。'
    redirect_to user
  end
end