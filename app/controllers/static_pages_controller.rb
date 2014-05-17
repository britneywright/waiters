class StaticPagesController < ApplicationController
  def home
    @waiter = Waiter.new
    @event = Event.new
  end
end
