class Host < ActiveRecord::Base
  validates :name, :email, :phone, :events, presence: true
  has_many :events
  accepts_nested_attributes_for :events, reject_if: lambda {|attributes| attributes['city'].blank?}
end