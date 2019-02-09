class LikesController < ApplicationController
 before_action :require_user_logged_in

  
  def create
    post = Micropost.find(params[:micropost_id])
    current_user.like(post)
    flash[:success] = ' micropostをお気に入りに登録しました'
    redirect_back(fallback_location: root_url)
  end

  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.dislike(post)
    flash[:success] = 'micropostのお気に入りを解除しました。'
    redirect_back(fallback_location: root_url)
  end
end
