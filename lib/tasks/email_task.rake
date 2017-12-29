task email_task: :environment do
  # ... set options if any
  ExampleMailer.sample_email.deliver_now!

end
