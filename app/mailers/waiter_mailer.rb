class WaiterMailer < ActionMailer::Base
  default from: 'blw06g@gmail.com', to: 'britney@britneywright.com'

  def newwaiter_email(waiter)
    @waiter = waiter
    @url = 'http://example.com'
    mail(subject: 'New Waiter is Interested in Waiters for Later')
  end
end