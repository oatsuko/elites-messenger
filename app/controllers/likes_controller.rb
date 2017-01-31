class LikesController < ApplicationController
    def create
        like = Like.new(user_id: current_user.id, timeline_id: params[:timeline_id])
        like.save
        redirect_to timelines_path
    end
    
    def destory
        like = Like.find_by(user_id: current_user.id, timeline_id: params[:timeline_id])
        like.destroy
        redirect_to timelines_path
    end
    
end