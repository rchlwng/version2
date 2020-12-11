class ContactController < ApplicationController
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new contact_params
      if @contact.valid?
        ContactMailer.with(contact: @contact).new.deliver_now
        redirect_to new_contact_url
        flash[:notice] = "Thanks for contacting"
      else
        flash[:notice] = "Sorry, there was an error.  Please try again"
        render :new
      end
    end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end
