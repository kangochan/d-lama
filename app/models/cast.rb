class Cast < ActiveRecord::Base
  has_many :products_casts
  has_many :products, through: :products_casts
end
