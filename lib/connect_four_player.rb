
class Player
  def initialize(name)
    @name = name
  end

  def choose_position(available_positions)
    loop do 
      position = gets.chomp.to_i
      return position if available_positions.include? position 
      end
  end
end