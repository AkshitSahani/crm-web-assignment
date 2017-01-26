gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm-web.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name, as: :string
  field :email, as: :string
  field :note, as: :text
  # attr_reader :id
  # attr_accessor :first_name, :last_name, :email, :note

  # @@contacts = []
  # @@id = 1

  # This method should initialize the contact's attributes
  # def initialize(first_name, last_name, email, note)
  #   @first_name = first_name
  #   @last_name = last_name
  #   @email = email
  # note(should have @ infront of it) = note
  #   @id = @@id
  #   @@id += 1
  # end
  #
  # # This method should call the initializer,
  # # store the newly created contact, and then return it
  # def self.create(first_name, last_name, email, note)
  #   new_contact = Contact.new(first_name, last_name, email, note)
  #   @@contacts << new_contact
  #   return new_contact
  # end
  #
  # # This method should return all of the existing contacts
  # def self.all
  #   return @@contacts
  # end
  #
  # # This method should accept an id as an argument
  # # and return the contact who has that id
  # def self.find(by_id)
  #   @@contacts.each do |contact|
  #     if contact.id == by_id
  #       return contact
  #     end
  #   end
  #   return nil
  # end
  # #it can also have the following definition. .find is a normal ruby function.
  # # def self.find(id)
  # #   @@contacts.find { |contact| contact.id == id }
  # # end
  #
  # # This method should allow you to specify
  # # 1. which of the contact's attributes you want to update
  # # 2. the new value for that attribute
  # # and then make the appropriate change to the contact
  #
  # def update(attribute, value)
  #   @attribute = attribute
  #   @value = value
  #
  #   if attribute == 'email'
  #     self.email = value
  #   elsif attribute == 'first_name'
  #     self.first_name = value
  #   elsif attribute == 'last_name'
  #     self.last_name = value
  #   elsif attribute == 'note'
  #     self.note = value
  #   end
  # end
  #
  # # This method should work similarly to the find method above
  # # but it should allow you to search for a contact using attributes other than id
  # # by specifying both the name of the attribute and the value
  # # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  # def self.find_by(attribute, value)
  #   @attribute = attribute
  #   @value = value
  #   @@contacts.each do |contact|
  #     if attribute == "first_name"
  #       if contact.first_name == value
  #         return contact
  #       end
  #     elsif attribute == "last_name"
  #       if contact.last_name == value
  #         return contact
  #       end
  #     elsif attribute == "email"
  #       if contact.email == value
  #         return contact
  #       end
  #     elsif attribute == "note"
  #       if contact.note == value
  #         return contact
  #       end
  #     elsif attribute == "id"
  #       if contact.id == value
  #         return contact
  #       end
  #     else
  #       return "Contact with that attribute and value doesn't exist"
  #     end
  #   end
  # end
  #
  # # This method should delete all of the contacts
  # def self.delete_all
  #   @@contacts.clear
  # end

  def full_name
    return "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  # def delete
  #   @@contacts.delete(self)
  # end

  # Feel free to add other methods here, if you need them.

end

Contact.auto_upgrade!
