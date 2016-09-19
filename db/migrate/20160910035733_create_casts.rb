class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.string :cast
      t.timestamps
    end
  end
end
