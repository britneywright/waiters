class Event < ActiveRecord::Base
  validates :event_date, :city, presence: true
  belongs_to :host
  has_and_belongs_to_many :waiters
end
