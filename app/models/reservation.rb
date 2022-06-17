class Reservation < ApplicationRecord
  validates :start_date,presence: true
  validates :end_date,presence: true
  validate :reservation_dates_must_make_sense
  validate :start_d
  def start_d
    if start_date==(/\d{4}-\d{2}-\d{2}/)
      if Date.strptime(start_date,'%Y-%m-%d')
        puts start_date
      end
    end
  end
  validate :end_d
  def end_d
    if end_date==(/\d{4}-\d{2}-\d{2}/)
      if Date.strptime(end_date,'%Y-%m-%d')
        puts end_date
      end
    end
  end
  private
  def reservation_dates_must_make_sense
    if end_date <= start_date
      errors.add(:start_date, 'has to be before the end date')
    end
  end
end
