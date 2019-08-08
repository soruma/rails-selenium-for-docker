require 'rails_helper'

RSpec.describe TopController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #abort" do
    it "returns http success" do
      get :abort
      expect(response).to have_http_status(:success)
    end
  end

end
