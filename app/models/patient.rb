class Patient < ApplicationRecord
  has_many :doctors, through:Appointment
end
