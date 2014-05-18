class WaiterMailer < ActionMailer::Base
  default from: 'britney@britneywright.com'

  def newwaiter_email(waiter)
    @waiter = waiter
    @url = 'https://waitersforlater.herokuapp.com'
    mail(to: 'blw06g@gmail.com', subject: 'New Waiter is Interested in Waiters for Later')
  end
end