class ExampleMailer < ApplicationMailer
  def sample_email
          mail(to: "anant.dimri96@gmail.com", subject: 'check in app')
   end
end
