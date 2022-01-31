class Sighting < ApplicationRecord
    validates :date, :latitude, :longtitude, presence: true
    belongs_to :animal
    
end
