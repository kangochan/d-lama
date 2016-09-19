class AddRateToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :rate, :decimal, precision: 2, scale: 1
  end
end
