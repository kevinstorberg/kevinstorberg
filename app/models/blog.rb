class Blog < ApplicationRecord
  belongs_to :admin
  validates :admin_id, presence: true 
end
