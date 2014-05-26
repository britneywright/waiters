module HostsHelper
  def new_host
    Host.new 
    @event = @host.events.build   
  end
end
