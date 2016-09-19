class ProductsCast < ActiveRecord::Base
  belongs_to :product
  belongs_to :cast
end
