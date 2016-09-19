class AddNicknameToReviewComments < ActiveRecord::Migration
  def change
    add_column :review_comments, :nickname, :string
  end
end
