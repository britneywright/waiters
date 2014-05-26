class HostMailer < ActionMailer::Base
  default from: 'britney@britneywright.com'

  def newhost_email(event)
    @event = event
    mail(to: 'blw06g@gmail.com', subject: 'New Host is Interested in Waiters for Later')    
  end
end