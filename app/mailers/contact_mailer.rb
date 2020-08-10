class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail_address = Rails.application.credentials.contact[:mail][:izo]
    mail to: mail_address, subject: "Izo Official Web Siteへのお問い合わせ"
  end
end
