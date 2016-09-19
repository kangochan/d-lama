class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :day
      t.integer :time
      t.string :company
      t.text :detail
      t.text :twitter
      t.text :amazon
      t.text :wikipedia
      t.timestamps
    end
  end
end
