class Project < ApplicationRecord
  has_one :picture, as: :pictureable, dependent: :destroy
  accepts_nested_attributes_for :picture
  validates :body, :presence => true
  validates :title, :presence => true
  validates_associated :picture, :presence => true
end
