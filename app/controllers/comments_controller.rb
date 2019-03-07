class CommentsController < ApplicationController
include CommentsHelper

  def new
    @comment = Comment.new
  end

# not sure how to refactor the else statement if the render goes back to the same page, and what is the path?
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to activity_path(@comment.activity_id)
    else
      flash[:notice] = "Invalid Entry, Please Try Again"
      redirect_to activity_path(@comment.activity_id)
    end
  end



  private


  def comment_params
    params.require(:comment).permit(:title, :content, :camp_counselor_id, :activity_id)
  end

end
