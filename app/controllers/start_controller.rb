class StartController < ApplicationController

  def index
    if (user_signed_in?)
    @tasks = current_user.tasks
  	@task = @tasks.find_by(date: Time.now.strftime("%d/%m/%Y"))
  else
    redirect_to new_user_session_path
  end
  end

end
