class Product < ActiveRecord::Base
  has_many :product_likes, dependent: :destroy
  has_many :product_structures
  has_many :products_casts
  has_many :casts, through: :products_casts
  has_many :reviews
  has_one :image, as: :imageable, dependent: :destroy

  accepts_nested_attributes_for :image

  def product_like_user(user_id)
    product_likes.find_by(user_id: user_id)
  end

  def review_like_user(user_id)
    review_likes.find_by(user_id: user_id)
  end

end
