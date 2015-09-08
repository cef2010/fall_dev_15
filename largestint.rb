def largest(arr)
  compare = 0
  arr.each do |e|
    if e > compare
      compare = e
    end
  end
  puts "The largest number in #{arr} is #{compare}."
end

usr = []
print "How many numbers will be compared? "
q = gets.chomp.to_i
q.times do |n|
  print "Enter number #{n}: "
  usr[n] = gets.chomp.to_i
end
largest(usr)
