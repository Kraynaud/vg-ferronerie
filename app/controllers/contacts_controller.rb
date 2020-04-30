class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  after_action :send_mail, only: :create

  def new
    @contact = Contact.new
    @objets = ['Demande de devis', 'Demande d\'information', 'Prise de contact professionnelle']
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save

      redirect_to root_path
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:nom, :prenom, :email, :telephone, :objet, :description)
  end

  def send_mail
    ContactMailer.with(contact: self).contact_message(@contact).deliver_now
  end

end
