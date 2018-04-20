TILE_VALUES = [:b,:e]
class Tile
  attr_accessor :value, :revealed
  def initialize(board)
    @value = :e
    @revealed = false
    @board = board
    @flagged = false
  end

  def reveal
    raise "Tile is flagged" if @flagged
    @revealed = !@revealed
  end

  def revealed?
    @revealed
  end

end
