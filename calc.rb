@operators = ['+','-','*','/']

def welcome
  print "
  Enter the equation you would like to calculate,
  remember to use spaces between your operator and numbers.

  "
end

def user_input
  print ""
  input = gets.chomp
  @input = input.split(" ")
  return @input # input is array at this point
end

def valid(arr)
  # iterate through array,

  #CHECK FOR LETTER
  z = 1
  unless /[a-z]/.match(arr.join(''))
    z = 0
  end
  if z == 1
    return false
  elsif z == 0
  end

  #Is there an operator present
  x = 0
  while arr.length > x
    if @operators.include?(arr[x])
      #puts 'found an operator' #diag
      #puts "#{arr[x]}"#diag

      if arr[x - 1].to_f.is_a?(Numeric) && arr[x + 1].to_f.is_a?(Numeric)
        #puts "#{arr[x - 1]} and #{arr[x + 1]}" # diag
      else
        #puts " #{return false} " # diag
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
  @n1 = @input[0].to_f
  @n2 = @input[2].to_f
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
  puts "  ------\n  #{@answer}"
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
