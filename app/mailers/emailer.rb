class Emailer < ActionMailer::Base
  # default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.emailer.contact.subject
  #
  def contact_us(contact)
    @contact = contact
    # attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    # mail(:to => "#{contact.first_name} <#{contact.email}>", :subject => "Someone Conctacted you about Scoran.com")
    mail(:from => @contact.email, :to => ["scott@scoran.com", "randy@hummusandpita.com"], :subject => "Someone contacted you about The Word Craze")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.emailer.feedback.subject
  #
  def feedback
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end
