require 'swagger_helper'

RSpec.describe 'Api::V1::Reservations', type: :request do
  let(:user) { create(:user) }
  let(:car) { create(:car, user:) }
  let(:token) { JWT.encode({ user_id: user.id }, ENV.fetch('JWT_SECRET', nil)) }
  let(:headers) { { 'Authorization' => token } }
  let(:reservation_params) { { date: '2020-01-01', city: 'Alexandria' } }

  path '/api/v1/users/:user_id/reservations' do
    get 'Returns all reservations' do
      tags 'Reservations'
      produces 'application/json'
      response '200', 'Returns all reservations' do
        run_test!
      end
    end
  end
  path '/api/v1/users/:user_id/reservations' do
    post 'Creates a reservation' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          date: { type: :string },
          city: { type: :string }
        },
        required: %w[date city]
      }
      response '201', 'Reservation created' do
        run_test!
      end
      response '422', 'Reservation creation failed' do
        run_test!
      end
    end
  end

  path '/api/v1/users/:user_id/reservations/{id}' do
    put 'Updates a reservation' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          date: { type: :string },
          city: { type: :string }
        },
        required: %w[date city]
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
