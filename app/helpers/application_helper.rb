module ApplicationHelper
  def new_host
    Host.new 
    @event = @host.events.build   
  end
  def new_waiter
    Waiter.new   
  end  
end