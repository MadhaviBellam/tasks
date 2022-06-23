class Person < ApplicationRecord
  attr_accessor :name

  validates_length_of :name, maximum: 6

  before_validation :remove_whitespaces

  private

  def remove_whitespaces
    name.strip!
  end
end

person = Person.new
person.name = '  bob  '
person.valid?
person.name
