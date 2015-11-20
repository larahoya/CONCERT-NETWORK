class Comment < ActiveRecord::Base
  belongs_to :concert
  validates :user, :text, presence:true

end
