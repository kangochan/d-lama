class AddDirectorToProducts < ActiveRecord::Migration
  def change
    add_column :products, :director, :string
  end
end
