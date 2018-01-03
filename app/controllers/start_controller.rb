class StartController < ApplicationController

  def index
    if (user_signed_in?)
       	@tasks = current_user.tasks

        # @task = @tasks.find_by(date: Time.now.strftime("%d/%m/%Y"))

      	@dates = @tasks.group(:date).map(&:date).uniq

       	@tasks_perday = @tasks.where(date: Time.now.strftime("%d/%m/%Y"))


      # end
     # @data = params[:radios1]
  end
end

end
