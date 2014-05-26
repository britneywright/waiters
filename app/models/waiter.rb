class Waiter < ActiveRecord::Base
  validates :name, :email, :phone, :city, presence: true
  has_and_belongs_to_many :events
end
