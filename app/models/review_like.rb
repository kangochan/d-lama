class ReviewLike < ActiveRecord::Base
  belongs_to :review, counter_cache: :likes_count
  belongs_to :users
end
