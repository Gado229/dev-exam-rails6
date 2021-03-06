class Property < ApplicationRecord
  validates :propert, presence: true
  has_many :nearest_stations, dependent: :destroy
  
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true
end
