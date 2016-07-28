class Picture < ApplicationRecord
  # belongs_to :admin
  belongs_to :pictureable, polymorphic: true, optional: true
  mount_uploader :image, ImageUploader
end
