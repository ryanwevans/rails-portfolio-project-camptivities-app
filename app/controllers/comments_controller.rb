class CommentsController < ApplicationController
include CommentsHelper

  def new
    @comment = Comment.new
  end

  def create
    create_logic
  end



  private


  def comment_params
    params.require(:comment).permit(:title, :content, :camp_counselor_id, :activity_id)
  end

end
