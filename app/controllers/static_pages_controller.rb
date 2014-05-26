class StaticPagesController < ApplicationController
  def home
    @waiter = Waiter.new
    @host = Host.new
    @event = Event.new
  end
end