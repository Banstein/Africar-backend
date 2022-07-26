require 'rails_helper'
 RSpec.describe Car, type: :model do
    subject do
        @user = User.create(username: 'test', password: 'test')
        @car = Car.create(name: 'test', description: 'test', picture: 'car', price: '20', user_id: @user.id) 
    end
    before { subject.save }

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end
end