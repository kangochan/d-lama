class Product < ActiveRecord::Base
  has_many :product_likes, dependent: :destroy
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
  has_many :product_structures
  has_many :products_casts
  has_many :casts, through: :products_casts
  has_many :reviews
end
