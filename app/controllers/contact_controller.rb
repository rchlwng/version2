class ContactController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    begin
      @contact_form = ContactForm.new(params[:contact_form])
      @contact_form.request = request
      if @contact_form.deliver
        @contact_form = ContactForm.new
        format.html {
          flash.now[:success] = @message = "Thanks for reaching out!"
          render 'new'
        }
      else
        format.html {
           flash.now[:error] = @message = "Message did not send."
           render 'new' 
        }
      end
    rescue ScriptError
      flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
    end
  end
end
