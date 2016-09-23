class AddStoryNumberToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :story_number, :integer
  end
end
