class SignupForm
  include ActiveModel::Model

  attr_accessor :name, :email, :phone, :event_date, :city
  
  validates :name, :email, :phone, :event_date, :city, presence: true

  delegate :event_date, :city, to: :event
  delegate :name, :email, :phone, to: :host

  def persisted?
    false
  end

  def save
    if valid?
      persist
      true
    else
      false
    end
  end

  def host
    @host ||= Host.new
  end

  def event
    @event ||= host.events.build
  end

private

  def persist
    @host = Host.create(name: name, email: email, phone: phone)
    @event = host.events.build.create(event_date: event_date, city: city)
  end
end