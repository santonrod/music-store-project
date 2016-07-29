require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user_new) {User.new()}
  let(:user_owner) {User.create(name:"Stefan",email:"santonrod@gmail.com",owner:true)}

  describe 'initialzie' do 
    it '.valid' do
      expect(user_new).to be_a User 
    end
     it '.name' do 
       expect(user_new.name).to eq("")
     end
     it'.owner' do
      expect(user_new.owner).to eq(false)
    end
  end

  describe 'initialzie' do 
    it '.valid' do
      expect(user_owner).to be_a User 
    end
     it '.name' do 
       expect(user_owner.name).to eq("Stefan")
     end
     it'.owner' do
      expect(user_owner.owner).to eq(true)
    end
  end

end
