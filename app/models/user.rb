class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :product_likes
  has_many :review_likes
  has_many :reviews
  has_many :revieww_comments
  validates :nickname, presence: true

  enum status: {draft: 0, published: 1}
end
