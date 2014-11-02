class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  mount_uploader :image, PhotoUploader
  def date
  	created_at.strftime('%d %B %Y %H:%M:%S')
  end
end
