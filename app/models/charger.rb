class Charger < ApplicationRecord
  validates :name,presence: true,length: {minimum:4,maximum:300}
  validates :cost,presence: true,numericality: true
end
