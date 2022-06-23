class Customer < ApplicationRecord
  has_many :orders
  validates :name,presence: true,length: {minimum:4,maximum:20}
  validates :mobileno,presence: true,numericality: true
  #before_validation: mobile_number
  #def mobile_number
    #if mobileno = ~/\b^([0-9]{10})$\b/
      #puts "Valid mobile number"
    #else
      #errors.add("is Invalid mobile number")
    #end
  #end
end
