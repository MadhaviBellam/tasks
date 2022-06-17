class Googleform < ApplicationRecord
  attr_accessor :firstname, :lastname
  PLACE = %w/ Ongole hyderabad chimakurthy/
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :age, presence: true,numericality: true
  validates :dob, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },presence: true
  validates :phno, presence: true,numericality: true,length: { minimum: 10, maximum: 12 }
  validates :pincode, presence: true,numericality: true,length: {minimum: 6, maximum: 6}
  EDUCATION = %w/ 10th 12th b.tech /
  validates :education, presence: true

  #def firstname
  #  firstname.split(/\s/).first
  #end
  #def lastname
  #  lastname.split(/s/).last
  #end
 end
