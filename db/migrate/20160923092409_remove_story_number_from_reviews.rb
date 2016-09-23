class RemoveStoryNumberFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :story_number, :integer
  end
end
