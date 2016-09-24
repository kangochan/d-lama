class Image < ActiveRecord::Base
  mount_uploader :image_url, ImageUrlUploader
  belongs_to :imageable, polymorphic: true
end
