def reverse(string)
  arr = string.to_s.downcase.split('')
  revarr = []
  arr.each do |i|
    revarr.unshift(i)
  end
  revstr = ""
  v = 0
  revarr.each do |e|
    if e != " " && v % 2 == 0
      revstr << e.upcase
      v += 1
    elsif e != " "
      revstr << e
      v += 1
    else
      revstr << e
    end
  end
  puts revstr
end
usr = gets.chomp
reverse(usr)
