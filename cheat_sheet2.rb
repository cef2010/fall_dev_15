#require 'pry' #diag
# Open to main menu
def main_menu
  #  puts "Cheat Sheet:\n\t0. Quit\n\t1. Command Line\n\t2. Vim\n\t3. Search\nChoose an Option: "

  # FIND A WAY TO STORE AND CALL METHODS IN HASH
  main = {
    '1' => ['command_line_menu', 'Command Line'],
    '2' => ['vim_menu', 'Vim'],
    '3' => ['sublime_menu', 'Sublime']
  }
  # DON'T RUN UNTIL METHOD CAN BE CALLED FROM HASH

  puts "\tCheat Sheet:\n\t------------"
  main.length.times do |choice|
    puts "\t#{(choice + 1).to_s}. #{main[(choice + 1).to_s][1]}"
  end
  puts "\tS. Search"
  input = gets.chomp
  if input == 's' ||  input == 'S'
    print 'Search for: '
    search = gets.strip
    puts `man #{search}`
    main_menu
  elsif input.to_i == 0
    exit
  elsif input.to_i <= main.length
    method = main[input][0]
    #binding.pry #diag
    send(method.to_sym)
  else
    puts "I'm sorry, I didn't quite get that."
    main_menu
  end
end

def command_line_menu
  command_line = {
    '1' => ['copy', 'cp', 'cp <source filename> <destination filename>'],
    '2' => ['move', 'mv', 'mv <source filename> <destination filename>'],
    '3' => ['make directory', 'mkdir', 'mkdir <directory name>'],
    '4' => ['list', 'ls', 'ls <options>'],
    '5' => ['remove', 'rm', 'rm <options>']
  }
  puts "\tCommand Line\n\t------------\n\t0. Return"
  command_line.length.times do |choice|
    puts "\t#{(choice + 1).to_s}. #{command_line[(choice + 1).to_s].join(' - ')}"
  end
  input = gets.to_i
  if input == 0
    main_menu
  elsif input <= command_line.length
    puts `man #{command_line[input.to_s][1]}`
    command_line_menu
  else
    puts "I didn't quite get that. Try again."
    command_line_menu
  end
end

def vim_menu
  # puts "Vim Cheat Sheet:\n\tmove cursor left - h\n\tmove cursor right - l\n\tmove cursor up - k\n\tmove cursor down - j\n\n\tinsert mode - i\n\tescape inset mode - esc\n\n\twrite and quit vim - :wq\n\tquit vim without writing - :q\n\nPress 1 for vim documentation\nPress 0 to return to main menu"
  vim = {
    '1' => ['move cursor left', 'h'],
    '2' => ['move cursor right', 'l'],
    '3' => ['move cursor up', 'k'],
    '4' => ['move cursor down', 'j'],
    '5' => ['insert mode', 'i'],
    '6' => ['escape insert mode', 'esc'],
    '7' => ['write and quit', ':wq'],
    '8' => ['quit without writing', ':q']
  }
  puts "\tVIM\n\t---\n\t0. Return"
  vim.length.times do |choice|
    puts "\t#{vim[(choice + 1).to_s].join(' - ')}"
  end
  puts "\tPress 'm' for VIM documentation."
  input = gets.chomp
  if input == 'm'
    puts `man vim`
    vim_menu
  elsif input == '0'
    main_menu
  else
    puts "I'm sorry, I didn't quite get that."
    vim_menu
  end
end

def sublime_menu
  sublime = {
    '1' => ['duplicate', 'CMD-SHFT-D'],
    '2' => ['indent left/right', 'CMD-[ OR ]'],
    '3' => ['move line up/down', 'CMD-CTRL-Up OR Down'],
    '4' => ['move cursor to end of line', 'CMD-Left OR Right'],
    '5' => ['comment out lines', 'CMD-/'],
    '6' => ['enter new line after comment', 'CMD-Enter'],
    '7' => ['enter line before current', 'CMD-SHFT-Enter'],
    '8' => ['select text w/ arrow keys', 'HOLD SHFT-Left OR Right'],
    '9' => ['delete row where cursor is', 'CTRL-SHFT-K'],
    '10' => ['multiple cursors', 'HOLD CMD-Click'],
    '11' => ['save as', 'CMD-SHFT-S']
  }
  puts "\tSUBLIME\n\t-------\n\t0. Return"
  sublime.length.times do |choice|
      puts "\t#{sublime[(choice + 1).to_s].join(': ')}"
  end
  input = gets.to_i
  if input == 0
    main_menu
  else
    puts "I'm sorry, I didn't quite get that."
  end
end

main_menu
