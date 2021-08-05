require 'rails_helper'

RSpec.describe "ItemsOrders", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/items_orders/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/items_orders/create"
      expect(response).to have_http_status(:success)
    end
  end

end
