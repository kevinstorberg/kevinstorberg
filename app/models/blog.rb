class Blog < ApplicationRecord
  belongs_to :admin
  has_one :picture, as: :pictureable, dependent: :destroy
  validates :admin_id, presence: true
  accepts_nested_attributes_for :picture
end
