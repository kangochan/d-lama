class CreateProductStructures < ActiveRecord::Migration
  def change
    create_table :product_structures do |t|
      t.integer :product_id
      t.string :subtitle
      t.timestamps
    end
  end
end
