class SendEmailJob < ApplicationJob
  queue_as :default
  #
  # def perform(*args)
  #   # Do something later
  # end
  # def perform(user)
  #   @user = user
  #   ExampleMailer.sample_email(@user).deliver_later

end
