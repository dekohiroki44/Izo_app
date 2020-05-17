class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact  
    mail to: Rails.application.credentials.mail, subject: "Izo Official Web Siteへのお問い合わせ"
  end
end
