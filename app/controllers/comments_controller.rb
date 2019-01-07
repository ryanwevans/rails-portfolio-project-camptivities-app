class CommentsController < ApplicationController
  before_action :set_camp, only: [:show, :edit, :update, :destroy]


  private

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:title, :content)
  end

end
