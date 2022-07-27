require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe '#create' do
    it 'should create a reservation' do
      reservation = Reservation.create(
        user_id: 1,
        room_id: 1,
        start_date: '2020-01-01',
        end_date: '2020-01-01'
      )
      expect(reservation).to be_valid
    end
  end

    describe '#update' do
    it 'should update a reservation' do
      reservation = Reservation.create(
        user_id: 1,
        room_id: 1,
        start_date: '2020-01-01',
        end_date: '2020-01-01'
      )
      reservation.update(
        user_id: 2,
        room_id: 2,
        start_date: '2020-01-02',
        end_date: '2020-01-02'
      )
      expect(reservation).to be_valid
    end
  end
end