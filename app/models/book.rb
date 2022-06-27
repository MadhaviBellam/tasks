# frozen_string_literal: true

# app/models/book.rb
class Book < ApplicationRecord
  validates :name,presence: true,length: {minimum: 4,maximum: 100}
  validates :pages,presence: true,numericality: true
  validates :cost,presence: true,numericality: true
  belongs_to :Author
  has_many :authors
  validates_length_of :name, minimum: 4, maximum: 20
  validates_presence_of :pages, minimum: 100, maximum: 1000
  validates_numericality_of :cost

  before_validation :remove_whitespaces
  after_validation :cost_condition
  before_save :save_before
  # around_save :around_s
  before_create :create_before
  after_create :create_after
  before_update :update_before
  after_update :update_after
  after_save :save_after
  before_destroy :destroy_before
  after_destroy :destroy_after
  after_commit :saving_program

  def remove_whitespaces
    name.strip!
    puts 'remove white spaces'
  end

  def cost_condition
    if cost > 700
      puts 'too much cost'
    else
      puts 'cost is reasonable'
    end
  end

  def save_before
    puts 'I am before save block'
  end

  # def around_s
  # puts " this is around save"
  # end
  def create_before
    puts 'before create block'
  end

  def create_after
    puts 'after create block'
  end

  def update_before
    puts 'before updating block'
  end

  def update_after
    puts 'after updating block'
  end

  def save_after
    puts 'i am after save block'
  end

  def destroy_before
    puts 'before destroy block '
  end

  def destroy_after
    puts 'after destroy block'
  end

  def saving_program
    puts 'commited succesfully'
  end
end
