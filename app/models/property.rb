class Property < ApplicationRecord
   validates :property_name, :rent, :address, :age,  presence: true
end
