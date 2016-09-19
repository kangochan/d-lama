class AddSiteToProducts < ActiveRecord::Migration
  def change
    add_column :products, :site, :text
  end
end
