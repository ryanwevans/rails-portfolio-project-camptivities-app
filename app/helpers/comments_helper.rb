module CommentsHelper

  def create_logic
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to activity_path(@comment.activity_id)
    else
      flash[:notice] = "Invalid Entry, Please Try Again"
      redirect_to activity_path(@comment.activity_id)
    end
  end

end
