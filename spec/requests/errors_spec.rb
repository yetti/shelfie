require "rails_helper"

RSpec.describe "Errors" do
  describe "GET /404" do
    it "renders the not found page" do
      get "/404"

      expect(response.body).to include("The page you were looking for doesn't exist.")
    end
  end

  describe "GET /422" do
    it "renders the unprocessable request page" do
      get "/422"

      expect(response.body).to include("The change you wanted was rejected.")
    end
  end

  describe "GET /500" do
    it "renders the internal server error page" do
      get "/500"

      expect(response.body).to include("We're sorry, but something went wrong.")
    end
  end
end
