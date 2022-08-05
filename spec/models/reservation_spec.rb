require 'rails_helper'

RSpec.describe Reservation, type: :model do
  subject do
    @user = User.create(username: 'Tobin', password: 'password')
    @car = Car.new(name: 'Honda', description: 'Honda fit', price: 2000, picture: 'url')
    @reservation = Reservation.create(date: 'Sun, 02 Feb 2020', city: 'DR Congo', car_id: 1, user_id: 1)
  end
  before { subject.save }

  it 'City name should not be nil' do
    subject.city = nil
    expect(subject).to_not be_valid
  end

  it 'Car id should not be nil' do
    subject.car_id = nil
    expect(subject).to_not be_valid
  end

  it 'Date should not be nil' do
    subject.date = nil
    expect(subject).to_not be_valid
  end
end
