class CommentsController < ApplicationController

  def create
    @concert = Concert.find(params[:concert_id])
    @comment = @concert.comments.new entry_params
    if @comment.save
      flash[:notice] = 'Comment created!'
    else
      @errors = @comment.errors.full_messages
      flash[:alert] = "Comment couldn't be created"
    end
    redirect_to action:'show', controller:'concerts', id:@concert.id
  end

  private

  def entry_params
    params.require(:comment).permit(:user, :text)
  end

end
