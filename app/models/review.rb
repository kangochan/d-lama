class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  has_many :review_likes, dependent: :destroy
  has_many :review_comments

  def review_like_user(user_id)
    review_likes.find_by(user_id: user_id)
  end
  
end
