class Project < ApplicationRecord
  has_one :picture, as: :pictureable, dependent: :destroy
  accepts_nested_attributes_for :picture
end
