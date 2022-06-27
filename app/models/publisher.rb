class Publisher < ApplicationRecord
  validates :firstname,presence: true,length: {minimum:3,maximum:50}
  validates :lastname,presence: true,length: {minimum:3,maximum: 50}
end
