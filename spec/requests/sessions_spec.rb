require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /index" do


    it "should render the index template" do
      get "/sessions/index"
      expect(response).to render_template("index")
    end
  end
end
