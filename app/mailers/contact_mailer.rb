class ContactMailer < ApplicationMailer
  default from: 'info@parkerchorale.org'

  def contact_email(contact)
    @contact = contact
    mail(to: 'popealicia@msn.com', subject: 'Thank You For Contacting Parker Chorale')
  end
end
