class ContactMailer < ApplicationMailer

  def contact_message(contact)
    @contact = contact
    mail to: "vgferronneriecreation@gmail.com", subject: contact.objet
  end
end
