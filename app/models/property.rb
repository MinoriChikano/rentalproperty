class Property < ApplicationRecord
   validates :property_name, :rent, :address, :age,  presence: true
   has_many :nearest_stations
end
