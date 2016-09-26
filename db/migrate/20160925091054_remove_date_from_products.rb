class RemoveDateFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :date
    add_column :products, :date, :date
  end
end
