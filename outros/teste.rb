def main
  h_choice = ''
  c_choice = ''
  first = ''

  while h_choice != 'O' && h_choice != 'X'
    begin
      puts 'Choose X or O:'
      h_choice = gets.chomp.upcase
      puts "Chosen: #{h_choice}"
    rescue SignalException
      puts 'Bye!'
      exit
    rescue StandardError
      puts 'Invalid choice'
    end
  end

  if h_choice == 'X'
    c_choice = 'O'
  else
    c_choice = 'X'
  end

  while first != 'Y' && first != 'N'
    begin
      puts 'First to start? [y/n]: '
      first = gets.chomp.upcase
    rescue SignalException
      puts 'Bye!'
      exit
    rescue StandardError
      puts 'Invalid choice'
    end
  end

  while empty_cells(@board).size > 0 && !game_over(@board)
    if first == 'N'
      ai_turn c_choice, h_choice
      first = ''
    end

    human_turn c_choice, h_choice
    ai_turn c_choice, h_choice
  end

  if wins @board, HUMAN
    clear_screen
    puts "Human turn [#{h_choice}]"
    render @board, c_choice, h_choice
    puts 'You win!'
  elsif wins @board, COMP
    clear_screen
    puts "Computer turn [#{c_choice}]"
    render @board, c_choice, h_choice
    puts 'Computer wins!'
  else
    clear_screen
    render @board, c_choice, h_choice
    puts 'It\'s a tie!'
  end

  exit 0
end