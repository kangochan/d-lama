class CreateReviewLikes < ActiveRecord::Migration
  def change
    create_table :review_likes do |t|
      t.integer :user_id
      t.integer :review_id
      t.timestamps
    end
  end
end
