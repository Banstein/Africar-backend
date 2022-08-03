require 'swagger_helper'

RSpec.describe 'Api::V1::Reservations', type: :request do
  let(:user) { create(:user) }
  let(:car) { create(:car, user:) }
  let(:token) { JWT.encode({ user_id: user.id }, ENV.fetch('JWT_SECRET', nil)) }
  let(:headers) { { 'Authorization' => token } }
  let(:reservation_params) { { start_date: '2020-01-01', end_date: '2020-01-02' } }

  path '/api/v1/reservations' do
    get 'Returns all reservations' do
      tags 'Reservations'
      produces 'application/json'
      response '200', 'Returns all reservations' do
        run_test!
      end
    end
  end
  path '/api/v1/reservations' do
    post 'Creates a reservation' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          start_date: { type: :string },
          end_date: { type: :string }
        },
        required: %w[start_date end_date]
      }
      response '201', 'Reservation created' do
        run_test!
      end
      response '422', 'Reservation creation failed' do
        run_test!
      end
    end
  end

  path '/api/v1/reservations/{id}' do
    put 'Updates a reservation' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          start_date: { type: :string },
          end_date: { type: :string }
        },
        required: %w[start_date end_date]
      }
      response '200', 'Reservation updated' do
        run_test!
      end
      response '422', 'Reservation update failed' do
        run_test!
      end

      response '404', 'Reservation not found' do
        run_test!
      end
    end
  end
end
