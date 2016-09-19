class CreateProductsCasts < ActiveRecord::Migration
  def change
    create_table :products_casts do |t|
      t.integer :product_id
      t.integer :cast_id
      t.timestamps
    end
  end
end
