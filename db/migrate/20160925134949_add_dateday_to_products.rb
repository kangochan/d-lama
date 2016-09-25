class AddDatedayToProducts < ActiveRecord::Migration
  def change
    add_column :products, :date_day, :integer
  end
end
