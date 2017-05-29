gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')


class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :text


  # attr_reader :id
  # attr_accessor :first_name, :last_name, :email, :note


# @@contacts = []
#
# @@id = 1



  # This method should initialize the contact's attributes
  # def initialize(first_name, last_name, email, note)
  #   @first_name = first_name
  #   @last_name = last_name
  #   @email = email
  #  *****     @not = note *******
  #   @id = @@id
  #   @@id += 1
  # end



  # This method should call the initializer,
  # store the newly created contact, and then return it
  # def self.create(first_name, last_name, email, note)
  #   new_contact = Contact.new(first_name, last_name, email, note)
  #   @@contacts << new_contact
  #   new_contact
  # end


  # This method should return all of the existing contacts
  # def self.all
  #   @@contacts
  # end

  # This method should accept an id as an argument
  # and return the contact who has that id
  # def self.find(id)
  #   @@contacts.each do |contact|
  #     return contact if contact.id == id
  #   end
  # end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  # def update(attribute_to_update, value)
  #   case attribute_to_update
  #   when "first_name"
  #     self.first_name = value
  #   when "last_name"
  #     self.last_name = value
  #   when "email"
  #     self.email = value
  #   when "note"
  #     self.note = value
  #   end
  # end





  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  # def self.find_by(attribute, value)
  #   if attribute == "first_name"
  #     @@contacts.each do |contact|
  #       if value == contact.first_name
  #         return contact
  #       end
  #     end
  #     nil
  #   end
  #
  #
  #   if attribute == "last_name"
  #     @@contacts.each do |contact|
  #       if value == contact.last_name
  #         return contact
  #       end
  #     end
  #     nil
  #   end
  #
  #
  #
  #   if attribute == "email"
  #     @@contacts.each do |contact|
  #       if value == contact.email
  #         return contact
  #       end
  #     end
  #     nil
  #   end
  #
  #
  #   if attribute == "note"
  #     @@contacts.each do |contact|
  #       if value == contact.note
  #         return contact
  #       end
  #     end
  #     nil
  #   end
  # end


  # This method should delete all of the contacts
  # def self.delete_all
  #   @@contacts.each do |contact|
  #     @@contacts.delete(contact)
  #   end
  # end

  def full_name
    "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  # def delete
  #   @@contacts.delete(self)
  # end

  # Feel free to add other methods here, if you need them.
end


Contact.auto_upgrade!

at_exit do
  ActiveRecord::Base.connection.close
end







######################CRM OUTPUTS#############
#Contact.create("Betty", "Maker", "bettymakesgmail.com", "Loves Pokemon")
#ronen = Contact.create("Ronen", "Annason", "Ronengmail.com", "Loves pizza")
#Contact.create("jon", "kim", "jk@gmail.com", "burritos")

#Contact.all
#ronen.full_name
