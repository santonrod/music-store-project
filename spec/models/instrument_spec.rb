require 'rails_helper'

RSpec.describe Instrument, type: :model do
  let(:instrument) {Instrument.create(category:"Guitar",brand:"Gibson",year:1985, details: "Used and blue", price:470)}
  let(:bad_instrument) {Instrument.create(category:nil,brand:nil,year:nil,details:nil,price:nil)}


  describe 'initialization' do
    it 'should have stuff' do
      expect(instrument.category).to be_a String
      expect(instrument.brand).to be_a String
      expect(instrument.year).to be_a Integer
      expect(instrument.details).to be_a String
      expect(instrument.price).to be_a Integer
    end
  end
    
     it '.authenticate' do
      bad_instrument.category = "Guitar"
      bad_instrument.brand = "Gibson"
      bad_instrument.year = 1946
      bad_instrument.details = "New and green"
      bad_instrument.price = 450
      expect(bad_instrument.valid?).to be false
    end  
end
