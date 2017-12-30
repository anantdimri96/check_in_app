class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something

    ExampleMailer.sample_email(user).deliver_now!
  
  end
end
