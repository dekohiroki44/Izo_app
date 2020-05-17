# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact_mail
    contact = Contact.new(sender: "みやぞん",
                          email: "example@example.com",
                          subject: "こんにちは",
                          content: "応援してます")
    ContactMailer.contact_mail(contact)
  end
end
