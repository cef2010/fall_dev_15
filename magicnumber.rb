require 'humanize'

def input
  print "Enter a number: "
  @num = gets.chomp
end

def magicnumber(i)
  if i == '4'
    puts "4 is the magic number."
  elsif i == ''
  elsif i == 'im cold'
    puts "Go buy a snuggie."
  elsif i == '123456789'
    puts "#{i} was a stupid choice. Put some thought into this."
  elsif i == '69'
    puts "\nlol. good call.\n\n"
  elsif i == '80085'
    puts "\nlol boobs\n\n"
  elsif i == 'B==D'
    puts "\nthats a penis\n\n"
  else i != '4'
    count = i.to_i.humanize.length
    puts "#{i} is #{count}."
  end
end

def program
  while @num != ''
    magicnumber(input)
  end
end

program
