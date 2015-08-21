require 'pry'

class List
  attr_accessor :name, :item_array

  def initialize(name)
    @name = name
    @item_array = []
  end

  def display_menu
    insults = ["\tTRY AGAIN LOSER", "\tYOU'RE TERRIBLE AT THIS", "\tYOUR MOM WAS BETTER AT THIS LAST NIGHT", "\tREALLY...", "\tITS NOT ME ITS YOU", "\tJUST GIVE UP"]
    insult_counter = 0
    while true
      puts """
      What would you like to do?
        1. Display List
        2. Add item
        3. Remove item
        4. Mark an item complete
        5. Exit
        """
        choice = gets.chomp
        if choice == '1'
          display_list
        elsif choice == '2'
          puts 'Name of list item: '
          item_name = gets.chomp
          puts 'Add a description: '
          description = gets.chomp
          add_item(item_name, description)
        elsif choice == '3'
          display_list
          puts 'Type name of item to remove: '
          to_delete = gets.chomp
          delete_item(to_delete)
        elsif choice == '4'
          display_list
          puts 'Type item name to mark completed: '
          mark = gets.chomp
          completed(mark)
        elsif choice == '5'
          return false
        else
          if insult_counter <= insults.length - 2
            puts insults[insult_counter]
          else
            puts insults[insults.length - 1]
          end
          insult_counter += 1
        end
    end
  end

  def add_item(name, description)
    @item_array << Item.new(name, description)
  end

  def display_list
    @item_array.each do |item|
      print "\t", item.item_name + ' -- ' + item.description, "\n"
    end
  end

  def delete_item(to_delete)
    @item_array.delete_if {|arr| arr.item_name == to_delete}
  end

  def completed(mark)
    completed_index = @item_array.index {|x| x.item_name == mark}
    @item_array[completed_index].description << ' [x]'
  end

end

class Item
  attr_accessor :item_name, :description

  def initialize(item_name, description)
    @item_name = item_name
    @description = description
  end

end


l = List.new('l')
l.display_menu
