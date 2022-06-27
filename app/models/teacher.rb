class Teacher < ApplicationRecord
  has_and_belongs_to_many :students
  before_create :bcreate
  after_create :acreate
  def bcreate
    puts "this is efore creation block"
  end
  def acreate
    puts "after create"
  end
end
