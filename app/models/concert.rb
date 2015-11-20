class Concert < ActiveRecord::Base
  validates :band, :venue, :city, :date, :price, presence:true
  validates :price, numericality:true
  has_many :comments

  def self.get_today_concerts
    select do |concert|
      concert.date.day == Date.today.day
    end
  end

  def self.get_month_concerts
    select do |concert|
      concert.date.month == Date.today.month
    end
  end

  def self.get_concerts_by_max_price(price)
    select do |concert|
      concert.price <= price
    end
  end

  def self.sort_concerts
    concerts = Concert.all.sort do |concert1, concert2|
      concert2.comments.count <=> concert1.comments.count
    end
  end

end
