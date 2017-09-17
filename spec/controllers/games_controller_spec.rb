require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  describe "#index" do
    it "responds successfully" do
      get :index
      expect(response).to be_success
    end

    it "returns a 200 response" do
      get :index
      expect(response).to have_http_status "200"
    end
  end
  # describe "games#create action" do
  #   it "should successfully create a game" do
  #     user = FactoryGirl.create(:user)
  #     sign_in user
  #     game = FactoryGirl.create(:game)
  #     expect(response).to redirect_to action: "show", id: game.id
  #     expect(game.white_player_id).to eq(user.id)
  #   end
  # end
end
