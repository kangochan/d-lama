class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  has_many :review_likes
  has_many :review_comments
end
