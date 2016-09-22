class RemoveFacebookFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :facebook, :text
  end
end
