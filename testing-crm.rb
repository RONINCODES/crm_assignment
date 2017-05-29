require_relative 'contact'
require_relative 'crm'

crm = CRM.new("admin")
Contact.create(first_name: "bob", last_name: "Cat", email: "gmail",note: "love")
puts Contact.all.map(&:inspect)

crm.modify_existing_contact
puts Contact.all.map(&:inspect)
