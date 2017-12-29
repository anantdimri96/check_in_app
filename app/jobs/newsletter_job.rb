class NewsletterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts 'i am busy'
    sleep 5
  end
end
