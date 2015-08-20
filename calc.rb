@operators = ['+','-','*','/']

def welcome
  print "
  I am a calculator.
  Spacing is important....   Figure it out...
  La ti flipping da...

  "
end

def user_input
  print "What can't you use your phone to calculate?
  "
  input = gets.chomp

  @input = input.split(" ")
  # puts # Diag only
  #  print input   # for diag only
  return @input # input is array at this point
end

def valid(arr)
  # iterate through array,

  # if arr.join("").split("").include?(('a'.upto('z').to_a))
  #    puts "got here"
  #    return false
  #  end

  # puts "letters = #{letters}" #diag
  # if letters.include?(('a'.upto('z')))
  #   puts "got in here"
  # end
  #
  # idx = 0
  # while arr.length > idx
  #   puts "arr[idx] = #{arr[idx]}" # diag
  #
  #   if arr[idx].include?(('a'.upto('z').to_a))  #|| arr[idx].include? ['A'..'Z']
  #     puts " Found letter"  # diag
  #     return false
  #     break
  #   end
  #   idx += 1
  # end
  #Is there an operator present
  x = 0
  while arr.length > x
    if @operators.include?(arr[x])
      puts 'found an operator' #diag
      puts "#{arr[x]}"#diag

      if arr[x - 1].to_f.is_a?(Numeric) && arr[x + 1].to_f.is_a?(Numeric)
        puts "#{arr[x - 1]} and #{arr[x + 1]}" # diag
      else
        puts " #{return false} " # diag
        return false
      end

    end
    x += 1
  end


  # Take user_input
  # Verify it is a normal math problem
  # Return true if valid,
  return true
end

def extract
  @n1 = @input[0]
  @n2 = @input[2]
  @op = @input[1]
end


def compute
  if @op == '+'
    #puts "addition" diag
    @answer = @n1 + @n2
  elsif @op == '-'
    #puts "subtraction" diag
    @answer = @n1 - @n2
  elsif @op == '/'
    #puts 'division' diag
    @answer = @n1 / @n2
  elsif @op == '*'
    #puts 'multiplication' diag
    @answer = @n1 * @n2
  end
  puts "#{@answer}"
end

def error
  puts "Input not recognized. Please only use provided options."
end

def output
  if valid == false
    return error
  else compute
  end
end


def calc
  welcome

  if valid(user_input)
    extract
    compute
  else
    error
    calc
  end

  # Welcome message
  # Get user input to calculate
  # Validate user input
  # Compute user input
  # Output user input or error
end

calc
