class Animal < ApplicationRecord
    validates :common_name, :latin_name, :kingdom, presence: true
    validates :common_name, uniqueness: true
    validates :latin_name, uniqueness: true

    has_many :sightings
end
