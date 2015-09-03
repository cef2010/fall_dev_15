def reverse(string)
  input = string.to_s.downcase
  revstr = ""
  input.each_char do |i|
    revstr.insert(0, i)
  end
  v = 0
  revstr.each_char do |e|
    if e != " " && v % 2 == 0
      revstr e.upcase!
      v += 1
    elsif e != " "
      v += 1
    else
    end
  end
  puts revstr
end
usr = gets.chomp
reverse(usr)
