#build a menu
@menu = {
  'entree' => {
    'chicken' => ['good chicken', '5'],
    'burger' => ['good burger', '6'],
    'steak' => ['good steak', '10'],
    'meatloaf' => ['eh', '7'],
    'hotdog' => ['good hotdog', '4']
  },
  'side' => {
    'fries' => ['crispy', '2'],
    'chips' => ['crispy', '1.5'],
    "mac'n'cheese" => ['gooey', '3'],
    'mashed potatoes' => ['mashed', '3'],
    'corn' => ['corny', '2.5']
  }
}
@total = 0
@side_counter = 0
def item_choice(type)
  #Prompt for entree
  if type == 'entree'
    puts "\nSelect an entree: \n-----------------"
  elsif type == 'side'
    puts "\nSelect a side: \n--------------"
  end
  @menu[type].length.times do |item|
    puts "#{@menu[type].keys[item]}: #{@menu[type].values[item][0]}, $#{@menu[type].values[item][1]}"
  end
  puts "\n"
  gets.chomp
end

def your_order
  if @side_counter <= 2
    @order = "You chose #{@entree} with #{@side1} and #{@side2}."
  end
  # if @side_counter > 2
  #   @order = @order + "\nExtra: #{}" ###
  # end
end

def price(type, selection)
  @total += (@menu[type][selection][1]).to_f
  if type == 'side'
    @side_counter += 1
  end
end

def your_total
  puts "Your total is: #{@total}"
end

def more_sides
  puts "Would you like any more sides?"
  if gets.chomp == 'yes'
    price('side', item_choice('side'))
#    your_order()
    more_sides
  end
end

def lunchlady
  @entree = item_choice('entree')
  price('entree', @entree)
  @side1 = item_choice('side')
  price('side', @side1)
  @side2 = item_choice('side')
  price('side', @side2)
  #MORE SIDES
  more_sides
  your_order
  your_total
end

lunchlady


#print order
#print total
