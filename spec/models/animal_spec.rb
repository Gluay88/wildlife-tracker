require 'rails_helper'

RSpec.describe Animal, type: :model do

    it 'is not valid without a common_name' do
        animal = Animal.create 
        expect(animal.errors[:common_name]).to_not be_empty      
        expect(animal.errors[:latin_name]).to_not be_empty      
        expect(animal.errors[:kingdom]).to_not be_empty      
    end
    
    it 'common_name should be unique' do
        animal1 = Animal.create common_name: 'foxes' 
        animal2 = Animal.create common_name: 'foxes'
        p animal2.errors
        expect(animal2.errors[:common_name]).to_not be_empty 
       
    end


end
