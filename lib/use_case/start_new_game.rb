# frozen_string_literal: true

class UseCase::StartNewGame
  def initialize(game_gateway)
    @game_gateway = game_gateway
  end

  def execute(options)
    game = Domain::Game.new(options)

    @game_gateway.save(game)

    {
      grid: game.grid,
      player_turn: game.player_turn
    }
  end
end
