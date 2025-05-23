class MusicClass < ApplicationRecord
  has_and_belongs_to_many :customers
  belongs_to :location
  belongs_to :session
  belongs_to :instructor
  
  def enrolled?(customer)
    customers.include?(customer)
  end
end
