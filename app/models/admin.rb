class Admin < ApplicationRecord
  has_many :blogs, dependent: :destroy
  has_many :projects, dependent: :destroy
end
