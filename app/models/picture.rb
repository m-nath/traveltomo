class Picture < ApplicationRecord
  belongs_to :event
  mount_uploader :image, PhotoUploader
end
