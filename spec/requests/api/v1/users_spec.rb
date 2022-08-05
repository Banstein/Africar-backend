require 'swagger_helper'

describe 'Api::V1::Users' do
  let(:user) { create(:user) }
  let(:token) { JWT.encode({ user_id: user.id }, ENV.fetch('JWT_SECRET', nil)) }
  let(:headers) { { 'Authorization' => token } }
  let(:user_params) { { email: user.email, password: user.password } }

  path '/api/v1/users' do
    post 'Creates a user' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[email password]
      }
      response '200', 'User created' do
        run_test!
      end
      response '422', 'User creation failed' do
        run_test!
      end
    end
  end
end
