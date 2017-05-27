require_relative 'contact'


class CRM

  def initialize

  end

  def main_menu
    while true
      print_main_menu
      user_selected = get.to_i
    end
  end

  def print_main_menu
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all contacts"
    puts "[5] Search by attribute"
    puts "[6] Exit"
    puts "Enter a number"
  end

  def call_option
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
    end
  end




  def add_new_contact
    print "Enter First Name: "
    first_name = gets.chomp

    print "Enter Last Name: "
    last_name = gets.chomp

    print "Enter Email Address: "
    email = gets.chomp

    print "Enter a Note: "
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    puts "Please enter the First Name associated with the contact you would like to modify? "
    value_name = gets.chomp

    contact_to_modify = Contact.find_by("first_name", f_name)

    puts "Which attribute would you like to modify? "
    attribute = gets.chomp

    puts "Please enter your specified modification to selected attribute: "
    value_modification = gets.chomp

    contact_tomodify.update(attribute, value)
  end



  

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end

  def exit
  end



end
