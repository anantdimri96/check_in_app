class StartController < ApplicationController

  def index
    if (user_signed_in?)
      # @user=current_user
      ExampleMailer.sample_email.deliver_now
    @tasks = current_user.tasks
  	@task = @tasks.find_by(date: Time.now.strftime("%d/%m/%Y"))
     @data = params[:radios1]
  else
    redirect_to new_user_session_path
  end
  end

end
