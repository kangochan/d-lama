class RemoveWikipediaFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :wikipedia, :text
  end
end
