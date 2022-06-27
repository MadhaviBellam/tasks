# frozen_string_literal: true

# app / models / student.rb
class Student < ApplicationRecord
  has_and_belongs_to_many :teachers
  validates :name, :stream, :marks, presence: true
  after_create :display_student_age
  validate :date_type
  def date_type
    puts expiration_date if expiration_date == (/\d{4}-\d{2}-\d{2}/) && Date.strptime(expiration_date, '%Y-%m-%d')
  end

  def display_student_age
    if dob.present?
      age = Date.today.year - dob.year
      puts "------age of the student is #{age}-----"
    else
      puts 'age cannot be calculated without dob'
    end
  end
end
