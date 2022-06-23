# frozen_string_literal: true

# app / models / appointment.rb
class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  validates :time, presence: true
  validates :date, presence: true

  before_validation :date_format

  after_validation :check_date_expired_or_not
  after_create :time_valid_or_not
  after_create :create_block
  before_update :updating_appointment
  after_update :updating_block
  after_save :save_block
  def date_format
    puts date if date.match(/\d{4}-\d{2}-\d{2}/) && Date.strptime(date, '%Y-%m-%d')
  end

  def check_date_expired_or_not
    if date.nil?
      puts 'invalid date'
    elsif Date.today.to_s <= date
      puts "your appointment date is #{date} at #{time}"
    else
      puts 'your appointment is expired, you should apply for new appointment for medical checkup'
    end
  end

  def time_valid_or_not
    if time.to_i.positive? && time.to_i <= 24
      puts 'valid time'
    else
      puts 'invalid time'
    end
  end

  def create_block
    puts 'created successfully'
  end

  def updating_appointment
    if Date.today.to_s < date
      puts 'your appointment is updated'
    else
      puts 'invalid date'
    end
  end

  def updating_block
    puts 'updated succesfully'
  end

  def save_block
    puts 'saved successfully'
  end
end
