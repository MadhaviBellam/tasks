class Author < ApplicationRecord
  validates :firstname,presence: true,length: {minimum:4,maximum:50}
  validates :lastname,presence: true,length: {minimum:4,maximum: 300}
  validates :age,presence: true,numericality: true
end
