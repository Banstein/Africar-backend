require 'rails_helper'

RSpec.describe User, type: :model do
    subject do
       User.new(username: 'User1', password: 'password')
    end
    before do
        subject.save
        end
    it 'should create a user' do
        expect(subject).to be_valid
    end
    it 'should update a user' do
        subject.update(username: 'User2')
        expect(subject).to be_valid
    end
end