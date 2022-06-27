class Book < ApplicationRecord
  validates :name,presence: true,length: {minimum: 4,maximum: 100}
  validates :pages,presence: true,numericality: true
  validates :cost,presence: true,numericality: true
  belongs_to :Author
end
