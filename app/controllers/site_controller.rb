class SiteController < ApplicationController

  def home
    @today_concerts = Concert.get_today_concerts
    @month_concerts = Concert.get_month_concerts
  end

  def search
    if params[:max_price]
      max_price = params[:max_price].to_i
      @selected_concerts = Concert.get_concerts_by_max_price(max_price)
    end
  end

  def popular
    @selected_concerts = Concert.sort_concerts[0...10]
  end

end
