class RemoveDateFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :year
    remove_column :products, :month
    add_column :products, :date, :date
  end
end
