class MessageMailer < ApplicationMailer
  default from: 'heyconnell@heyconnell.com' 
  
  def contact_email(sender, body)
    @sender = sender
    @body = body
    mail(to: "chris.g.connell@gmail.com", subject: 'heyconnell.com message')
  end
end
