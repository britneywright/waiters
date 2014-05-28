class Event < ActiveRecord::Base
  validates :event_date, :city, :host, presence: true
  belongs_to :host
  has_and_belongs_to_many :waiters
end
