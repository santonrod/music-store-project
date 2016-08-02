require 'rails_helper'

RSpec.describe Pen, type: :model do
  let(:pen) {Pen.new(color:nil)}

  describe 'initialzie' do 
    it '.valid' do
      expect(pen).to be_a Pen 
    end

    it '.beNice' do 
      expect(pen.beNice).to eq("Hello I'm nice")
    end

  end
end
