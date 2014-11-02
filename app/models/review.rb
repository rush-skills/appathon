class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  mount_uploader :image, PhotoUploader
end