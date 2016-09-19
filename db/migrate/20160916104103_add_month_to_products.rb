class AddMonthToProducts < ActiveRecord::Migration
  def change
    add_column :products, :month, :integer
  end
end
