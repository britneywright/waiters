class Host < ActiveRecord::Base
  validates :name, :email, :phone, presence: true
  has_many :events
end
