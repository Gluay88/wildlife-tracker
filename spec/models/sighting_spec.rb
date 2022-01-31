require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'is not valid without a date' do
    sighting = Sighting.create 
    expect(sighting.errors[:date]).to_not be_empty 
    expect(sighting.errors[:latitude]).to_not be_empty 
    expect(sighting.errors[:longtitude]).to_not be_empty 
  end


end
