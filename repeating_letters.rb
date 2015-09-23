def sanitize(input)
  input.downcase.split(' ')
end

def letter_count(word)
  length = word.length
  m = 0
  length.times do |i|
    n = word.count(word[i])
    if n > m
      m = n
    end
  end
  return m
end

def compare(str_arr)
  high = []
  str_arr.each do |str|
    if letter_count(str) > 1
      high << str
    end
  end
  return high
end

def program
  puts "Input words to compare, separated by spaces: "
  input = gets.chomp
  output = compare(sanitize(input))
  if output == []
    puts "No words contained repeating characters."
  elsif output.length == 1
    puts "The word with the most repeating characters is: #{output[0]}"
  else
    puts "Multiple words had the same number of repeating characters: "
    output.each do |word|
      puts word
    end
  end
end

program
