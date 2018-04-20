class Board
  def initialize(bombcount=8)
    @bombcount = bombcount
    @grid = Array.new(10) { Array.new(10) }
  end

  def populate
    @grid.flatten.each do |cell|
      cell << Tile.new(self)
    end
    add_bombs
  end
  def add_bombs
    bomb_count = 0
    until bomb_count == @bombcount
      current_tile = @grid.flatten.sample
      next if current_tile.value == :b
      current_tile.value = :b
      bomb_count += 1
    end
  end

  def render
    
  end
end
