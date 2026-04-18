class Board 
  attr_reader :columns_available 

  def initialize
    
    @board_columns_values = [
      [],
      [nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil],
    ]
    @columns_available = [1,2,3,4,5,6]
    @board_display = [
      ["1", "2", "3", "4", "5", "6", "7"],
      ["☐", "☐", "☐", "☐", "☐", "☐", "☐"],
      ["☐", "☐", "☐", "☐", "☐", "☐", "☐"],
      ["☐", "☐", "☐", "☐", "☐", "☐", "☐"],
      ["☐", "☐", "☐", "☐", "☐", "☐", "☐"],
      ["☐", "☐", "☐", "☐", "☐", "☐", "☐"],
      ["☐", "☐", "☐", "☐", "☐", "☐", "☐"],
  ]
  end


  def display
    @board_display.each { |line| p line } 
  end

  def game_over?
    
  end

  def available_column_choices
    columns_available
  end

  def update_available_positions(column_choice, sign)
    update_column(column_choice, sign)
    update_column_available
    update_board_display
  end

  private

  def update_column(column_choice, sign)
    
  end

  def update_column_available
    
  end

  def update_board_display
    
  end
end
