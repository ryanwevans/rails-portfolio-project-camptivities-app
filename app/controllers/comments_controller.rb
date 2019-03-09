class CommentsController < ApplicationController
include CommentsHelper

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to activity_path(@comment.activity_id)
    else
      flash[:notice] = "Fields Cannot be Blank"
      redirect_to activity_path(@comment.activity_id)
    end
  end



  private


  def comment_params
    params.require(:comment).permit(:title, :content, :camp_counselor_id, :activity_id)
  end

end
