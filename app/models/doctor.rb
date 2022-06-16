class Doctor < ApplicationRecord
  has_many :patients, through:Appointment
end
