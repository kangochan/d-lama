class AddPlaywriteToProducts < ActiveRecord::Migration
  def change
    add_column :products, :playwrite, :string
  end
end
