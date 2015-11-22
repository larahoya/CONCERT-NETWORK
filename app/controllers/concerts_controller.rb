class ConcertsController < ApplicationController

  def index
    @month_concerts = Concert.get_month_concerts
    @concerts = Concert.all
  end

  def new
    @month_concerts = Concert.get_month_concerts
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
    @month_concerts = Concert.get_month_concerts
    @concert = Concert.find(params[:id])
    @comment = @concert.comments.new
    @concert_comments = @concert.comments
  end

  private

  def entry_params
    params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
  end

end
