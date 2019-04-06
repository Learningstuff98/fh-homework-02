class Author < ApplicationRecord

  has_many :authorships
  has_many :books, through: :authorships

  def full_name
    "#{self.first_name} #{self.last_name}"  
  end

end
