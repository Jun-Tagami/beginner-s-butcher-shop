require 'rails_helper'

RSpec.describe "ItemOrders", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/item_orders/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/item_orders/create"
      expect(response).to have_http_status(:success)
    end
  end

end
