require 'swagger_helper'

describe 'Api::V1::Cars' do
  let(:user) { create(:user) }
  let(:car) { create(:car, user:) }
  let(:token) { JWT.encode({ user_id: user.id }, ENV.fetch('JWT_SECRET', nil)) }
  let(:headers) { { 'Authorization' => token } }
  let(:car_params) { { name: 'test', description: 'test', picture: 'car', price: 200 } }

  path '/api/v1/cars' do
    get 'Returns all cars' do
      tags 'Cars'
      produces 'application/json'
      response '200', 'Returns all cars' do
        run_test!
      end
    end
  end
  path '/api/v1/cars/{id}' do
    get 'show car' do
      tags 'Cars'
      produces 'application/json'
      response '200', 'show car' do
        run_test!
      end
    end
  end
  path '/api/v1/cars' do
    post 'Creates a car' do
      tags 'Cars'
      consumes 'application/json'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          picture: { type: :string },
          price: { type: :number }
        },
        required: %w[name description picture price]
      }
      response '201', 'Car created' do
        run_test!
      end
      response '422', 'Car creation failed' do
        run_test!
      end
    end
  end
  path '/api/v1/cars/{id}' do
    put 'Updates a car' do
      tags 'Cars'
      consumes 'application/json'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          picture: { type: :string },
          price: { type: :number }
        },
        required: %w[name description picture price]
      }
      response '200', 'Car updated' do
        run_test!
      end
      response '422', 'Car update failed' do
        run_test!
      end
    end
  end
  path '/api/v1/cars/{id}' do
    delete 'Deletes a car' do
      tags 'Cars'
      produces 'application/json'
      response '200', 'Car deleted' do
        run_test!
      end
    end
  end
end
