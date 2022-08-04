require 'rails_helper'
RSpec.describe Car, type: :model do
  subject do
    @user = User.create(username: 'test', password_digest: 'test', created_at: Time.now, updated_at: Time.now)
    @car = Car.create(name: 'test', description: 'test', picture: 'car', price: 200, created_at: Time.now,
                      updated_at: Time.now)
  end
  before { subject.save }

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a picture' do
    subject.picture = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end
end
