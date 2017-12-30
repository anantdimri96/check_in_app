task email_task: :environment do
  # ... set options if any
  HardWorker.perform_async

  # ExampleMailer.sample_email.deliver_now!

end
