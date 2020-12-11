class ContactMailer < ApplicationMailer
    default from: 'wangrach@usc.edu'
  
    def new
      @contact = params[:contact]
      mail(to: 'rachel@lu-wang.com', subject: 'Contact Form Inquiry')
    end
  end