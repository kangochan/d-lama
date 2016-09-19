class AddStoryNumberToProductStructures < ActiveRecord::Migration
  def change
    add_column :product_structures, :story_number, :integer
  end
end
