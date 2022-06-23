# frozen_string_literal: true

# app / models / author.rb
class Author < ApplicationRecord
  validates :lastname, presence: true
  validates :age, presence: true, numericality: true
  before_validation :check_first_name
  before_validation :check_last_name
  before_create :check_statement
  after_create :age_validation
  after_create :creating_statement
  before_update :before_updating_first_name
  after_update :set_first_name
  after_destroy :delete_first_name
  after_commit :save_program
  def check_first_name
    if firstname.nil?
      puts 'firstname mandatory please fill it'
    else
      puts firstname
    end
  end

  def check_last_name
    if lastname.length > 4
      puts lastname.strip!
      puts lastname
    else
      puts 'lastname lessthan minimum 4 characters please enter more number of characters '
    end
  end

  def check_statement
    puts 'fill all the columns these are mandatory'
  end

  def age_validation
    if age.to_i > 18 && age.to_i <= 100
      puts 'major'
    elsif age.to_i.positive? && age.to_i <= 18
      puts 'minor, he is not a author. he is a student'
    else
      puts 'invalid age'
    end
  end

  def creating_statement
    puts 'created successfully'
  end

  def before_updating_first_name
    puts firstname
  end

  def set_first_name
    puts 'updated successfully'
  end

  def delete_first_name
    puts "first name:#{firstname}"
  end

  def save_program
    puts 'saved successfully'
  end
end
