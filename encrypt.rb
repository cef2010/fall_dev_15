def encrypt(key, str)
  output = ''
  x = ('a'..'z').to_a
  str.length.times do |n|
    output << "#{str[n]}"
    key.times do |m|
      output << "#{x.sample}"
    end
  end
  output
end

def function
  print "Enter an encryption key as an integer: "
  k = gets.chomp.to_i
  print "Enter a string to be encrypted: "
  s = gets.chomp
  puts "Your encrypted string is: #{encrypt(k, s)}"
end

function
