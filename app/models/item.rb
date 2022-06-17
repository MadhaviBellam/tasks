class Item < ApplicationRecord
  #validates :name, presence: true,length: { minimum: 5 ,
#too_short: "must have at least %{count} characters"}
  validates :name,presence: true,length: { is: 8 },uniqueness: {case_sensitive: true}
  validates :price, presence:true
  validates :weight,numericality:  { greater_than: 100 }
  #validates :in_stock,inclusion: { in: [true, false],message: 'this one is not allowed' }
  #validates :in_stock,exclusion: { in: [nil] }
  #validates :in_stock#,inclusion: { in: [nil],message: 'this one is not allowed' }
  validates :expiration_date,presence:true
  validate :exp_d
  def exp_d
    if expiration_date.match(/\d{4}-\d{2}-\d{2}/)
      if Date.strptime(expiration_date,'%Y-%m-%d')
        puts expiration_date
      end
    end
  end
end
