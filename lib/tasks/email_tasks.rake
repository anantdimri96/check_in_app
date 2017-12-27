desc 'send email'
task send_email: :environment do
  # ... set options if any
  ExampleMailer.sample_email(options).deliver!
end
