class Picture < ApplicationRecord
  belongs_to :admin
  belongs_to :pictureable, polymorphic: true 
  mount_uploader :image, ImageUploader
end
