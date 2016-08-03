class Admin < ApplicationRecord
  has_secure_password
  has_many :blogs, dependent: :destroy
  has_many :projects, dependent: :destroy
  validates :name, :inclusion => {:in => %w(kevinstorberg)}
  validates :name, :uniqueness => {:case_sensitive => true}
end
