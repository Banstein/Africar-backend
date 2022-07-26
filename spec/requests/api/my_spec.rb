require 'swagger_helper'

describe 'Api::V1::Cars', type: :request do
  path '/api/v1/cars' do
    get 'Returns all cars' do
      tags 'Cars'
      produces 'application/json'
      response '200', 'Returns all cars' do
        run_test = -> do
          get '/api/v1/cars'
          expect(response).to have_http_status(200)
        end
        expect(run_test).to change { Car.count }.by(1)
      end
    end
  end
end
