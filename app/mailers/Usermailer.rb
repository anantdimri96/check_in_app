class UserMailer < ActionMailer::Base
  #default from: 'from@example.com'
  layout 'mailer'


  default from: 'checkinapp@example.com'

   # def welcome_email(user)
   #    @user = user
   #    @url  = 'http://www.gmail.com'
   #    mail(to: @user.email, subject: 'testing')
   # end

end
