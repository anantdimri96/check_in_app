class StartController < ApplicationController

  def index
    if (user_signed_in?)
       @user=current_user
      # ExampleMailer.sample_email(@user).deliver_now
      @tasks = current_user.tasks
      @task = Task.where(date: Time.now.strftime("%d/%m/%Y")).where(user_id: current_user).first

     # @data = params[:radios1]
  else
    redirect_to new_user_session_path
  end
  end

end
