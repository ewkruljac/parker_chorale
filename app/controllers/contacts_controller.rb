class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash.now[:success] = "Thank you for your interest, we will be in touch!"
      ContactMailer.contact_email(@contact).deliver_now
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :phone, :message)
    end
end
