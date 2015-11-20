class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new entry_params
    if @concert.save
      flash[:notice] = 'Concert created succesfully!'
      redirect_to action:'show', controller:'concerts', id:@concert.id
    else
      @errors = @concert.errors.full_messages
      flash[:alert] = "Concert couldn't be created"
      render 'new'
    end
  end

  def show
    @concert = Concert.find(params[:id])
    @comment = @concert.comments.new
    @concert_comments = @concert.comments

  private

  def entry_params
    params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
  end

end
