def fizzbuzz(i1, i2)
  (i1..i2).each do |n|
    if (n % 3 == 0) && (n % 5 == 0)
      puts 'FizzBuzz'
    elsif (n % 3 == 0)
      puts 'Fizz'
    elsif (n % 5 == 0)
      puts 'Buzz'
    else
      puts n
    end
  end
end
x1 = gets.chomp.to_i
x2 = gets.chomp.to_i
fizzbuzz(x1, x2)
