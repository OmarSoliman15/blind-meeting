require 'rails_helper'

RSpec.describe "BlindDates", type: :request do
  describe "GET /employees_index" do
    it "returns http success" do
      get "/blind_dates/employees_index"
      expect(response).to have_http_status(:success)
    end
  end

end
