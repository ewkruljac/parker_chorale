class ContactMailer < ApplicationMailer
  default from: 'parkerchorale@example.com'

  def contact_email(contact)
    @contact = contact
    mail(to: 'ewkruljac@gmail.com', subject: 'Thank You For Contacting Parker Chorale')
  end
end
