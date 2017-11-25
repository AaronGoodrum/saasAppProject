class ContactsController < ApplicationController
  
  #GET request to /contact-us
  #Show new contact form
  def new
    @contact = Contact.new
  end
  
  #Post request /contacts
  def create
    #Mass assingment of form fields into Contact object
    @contact = Contact.new(contact_params)
    
    #Save the Contact Object to the database
    if @contact.save
        name = params[:contact][:name]
        email = params[:contact][:email]
        body = params[:contact][:comments]
      
      #flash success from Contact form and send email
        ContactMailer.contact_email(name, email, body).deliver
       flash[:success] = "Message sent."
       redirect_to new_contact_path
    else
       flash[:danger] = @contact.errors.full_messages.join(", ")
       redirect_to new_contact_path
    end
  end
  private
    def contact_params
       params.require(:contact).permit(:name, :email, :comments)
    end
end