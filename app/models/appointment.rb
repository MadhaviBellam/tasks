class Appointment < ApplicationRecord
  validates :time,presence: true,numericality: true
  validates :date,presence: true,length: {minimum: 5,maximum: 300}
  belongs_to :doctor
  belongs_to :patient
end
