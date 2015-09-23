require 'pry'
def sanitize(input)
  @sani = input.delete(' ')
  @sani.downcase!
end

def revstring(string_to_reverse)
  @revcheck = []
  binding.pry
  string_to_reverse.length.times do |t|
    @revcheck.shift(string_to_reverse(t))
  end
end

def comparison
  if @revcheck.join('') == @sani
    puts "#{@input} is a palindrome!"
  else
    puts "#{@input} is not a palindrome!"
  end
end

def program
  puts "Enter a string to check for panidromes: "
  input = gets.chomp
  while input != 'exit'
    revstring(sanitize(input))
    comparison
  end
end

program
