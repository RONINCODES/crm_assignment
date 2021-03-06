require_relative 'contact'


class CRM

  def initialize(name)
    @name = name
    puts "This CRM is called" +@name

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

    contact = Contact.create(
    first_name: first_name,
    last_name:  last_name,
    email:      email,
    note:       note
    )

    # Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    puts "Please enter the First Name associated with the contact you would like to modify? "
    value_name = gets.chomp

    contact_to_modify = Contact.find_by(first_name: value_name)

    puts "Which attribute would you like to modify? "
    #1. first name => "first_name"
    attribute = gets.chomp.downcase.gsub(" ", "_")

    puts "Please enter your specified modification to selected attribute: "
    value_modification = gets.chomp
    # {first_name: value_modification}
    contact_attributes = Hash[attribute, value_modification]

    contact_to_modify.update(contact_attributes)
  end

  def delete_contact
    puts "Please enter the ID associated with the contact you would like to delete: "
    identification = gets.chomp
    contact_to_delete = Contact.find_by("id" => identification)
    contact_to_delete.delete
  end

  def display_all_contacts
    puts "List of Contacts"
    Contact.all.each do |contact|
      puts "#{contact.first_name} #{contact.last_name} #{contact.email} #{contact.note}"
    end
  end


  def search_by_attribute
    puts "Which Attribute would you like to search by? "
    attribute = gets.chomp
    attribute_search = Contact.find_by(first_name: "bob")
    puts "#{attribute_search}"

  end

  def exit
    exit
  end
end

contact = Contact.create(first_name: "bob", last_name: "Cat", email: "gmail",note: "love")
