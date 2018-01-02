class TasksController < ApplicationController
  def create
    				@task = Task.new(params.require(:task).permit(:to_do)
						.merge(:user_id => current_user.id,
								:date => Time.now.strftime("%d/%m/%Y")))
		if(@task.save)

    	redirect_to root_path
		else
			render plain: "error"
		end
	end



   def set_checkbox
       task = Task.find(params[:plan_id])

       if(task.checkbox == true)
          task.update!(checkbox: false)
         else
           task.update!(checkbox: true)
         end
   end



	def update
		set_task
		if(@task.update!(params.require(:task).permit(:completed)))
			redirect_to root_path
		end
	end



	private
	def set_task
		@task = Task.find(params[:id])
	end







end
