class Inquiry < ActiveRecord::Base
  validates :name, :role, :city, :email, :phone, presence: true
end
