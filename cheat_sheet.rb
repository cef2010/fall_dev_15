# Open to main menu
def main_menu
  puts "Cheat Sheet:\n\t0. Quit\n\t1. Command Line\n\t2. Vim\n\t3. Search\nChoose an Option: "
  input = gets.to_i
  if input == 0
    exit
  elsif input == 1
    command_line_menu
  elsif input == 2
    vim_menu
  elsif input == 3
    print 'Search for: '
    search = gets.strip
    puts `man #{search}`
    main_menu
  else
    puts "I'm sorry, I didn't quite get that."
    main_menu
  end
end

def command_line_menu
  puts "Command Line Cheat Sheet:
    0. Main Menu
    1. copy - cp - cp <source filename> <destination filename>
    2. move - mv - mv <source filename> <destination directory>
    3. make directory - mkdir - mkdir <directory name>"
    input = gets.to_i
    if input == 0
      main_menu
    elsif input == 1
      puts `man cp`
      command_line_menu
    elsif input == 2
      puts `man mv`
      command_line_menu
    elsif input == 3
      puts `man mkdir`
      command_line_menu
    else
      puts "I didn't quite get that. Try again."
      command_line_menu
    end
end

def vim_menu
  puts "Vim Cheat Sheet:\n\tmove cursor left - h\n\tmove cursor right - l\n\tmove cursor up - k\n\tmove cursor down - j\n\n\tinsert mode - i\n\tescape inset mode - esc\n\n\twrite and quit vim - :wq\n\tquit vim without writing - :q\n\nPress 1 for vim documentation\nPress 0 to return to main menu"
  input = gets.to_i
  if input == 0
    main_menu
  elsif input == 1
    puts `man vim`
    main_menu
  else
    puts "I'm sorry, I didn't quite get that."
  end
end

main_menu
