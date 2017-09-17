class GamesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(:white_player_id => current_user.id, :status => "pending")
    if @game.valid?
      redirect_to game_path(@game.id)
    else
      return render text: 'invalid game', status: :forbidden
    end
  end

  def update
    @game = Game.find_by_id(params[:id])
    white_player = @game.white_player_id
    if current_user.id != white_player
      @game.update_attributes(:black_player_id => current_user.id, :status => "in_progress")
      redirect_to game_path(@game.id)
    else
      redirect_to root_path
      
    end
  end

  def show
    @game = Game.find_by_id(params[:id])
  end

  def delete
  end

  private

  def game_params
    params.require(:game).permit(:black_player_id, :white_player_id, :status, :winner_id)
  end
end
