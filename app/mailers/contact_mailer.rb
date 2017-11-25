class ContactMailer < ActionMailer::Base
  default to: 'ag505181@gmail.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Rails Contact Form Message')
  end
end