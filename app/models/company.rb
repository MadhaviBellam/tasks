class Company < ApplicationRecord
  validates :name,presence: true,length: {minimum: 4,maximum:300}
  validates :place,presence: true,length:{minimum: 3,maximum:100}
  has_many :employees
end
