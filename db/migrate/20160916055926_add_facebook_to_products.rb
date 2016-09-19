class AddFacebookToProducts < ActiveRecord::Migration
  def change
    add_column :products, :facebook, :text
  end
end
