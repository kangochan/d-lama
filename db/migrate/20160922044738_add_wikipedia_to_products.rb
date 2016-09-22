class AddWikipediaToProducts < ActiveRecord::Migration
  def change
    add_column :products, :wikipedia, :text
  end
end
