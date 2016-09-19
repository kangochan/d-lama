class AddCommentToReviewComments < ActiveRecord::Migration
  def change
    add_column :review_comments, :comment, :text
  end
end
