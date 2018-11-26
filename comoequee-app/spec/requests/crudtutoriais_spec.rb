require 'rails_helper'

RSpec.describe "Crudtutoriais", type: :request do
  describe "GET /crudtutoriais" do
    it "works! (now write some real specs)" do
      get crudtutoriais_path
      expect(response).to have_http_status(200)
    end
  end
end
