contact_list = ['Keim, Jake: 816-970-3100', 'Biden, Joe: 660-654-1183', 'Tutone, Tommy: 867-5309', 'Wright, Brit: 702-883-6969']

puts "Select an option:\n1) List Contacts\t2) Add New Contact\t3) Sort Contacts\n4) Edit Contact\t\t5) Delete a Contact"
option = gets.chomp

case option
# OPTION list all contacts
when '1'
  puts contact_list

# OPTION create new contact
when '2'
  print "Enter First Name: "
  first_name = gets.chomp

  print "Enter Last Name: "
  last_name = gets.chomp

  print "Enter Phone Number: "
  phone_number = gets.chomp

  contact_list << "#{last_name}, #{first_name}: #{phone_number}"
  puts "\nNew contact list:\n", contact_list

# OPTION sort contacts
when '3'
  contact_list = contact_list.sort
  puts "\nNew contact list:\n", contact_list

# OPTION edit contact
when '4'
  puts "Which contact would you like to edit?"
  puts contact_list, "> "
  to_edit = gets.chomp

  to_edit_index = contact_list.index{ |t| t.include?(to_edit) }

  puts "What would you like to change #{contact_list[to_edit_index]} to?"
  print "First Name: "
  first_name_edit = gets.chomp

  print "Last Name: "
  last_name_edit = gets.chomp

  print "Phone Number: "
  phone_number_edit = gets.chomp

  contact_list[to_edit_index] = "#{last_name_edit}, #{first_name_edit}: #{phone_number_edit}"
  puts "\nNew contact list:\n", contact_list

# OPTION delete contact
when '5'
  puts "Which contact should we delete?"
  puts contact_list, "> "
  contact_delete = gets.chomp
  contact_delete_index = contact_list.index{ |t| t.include?(contact_delete) }

  contact_list.delete_at(contact_delete_index)
  puts "\nNew contact list:\n", contact_list

# ELSE print directions
else
  puts 'Please select one of the numbered options!'
end
