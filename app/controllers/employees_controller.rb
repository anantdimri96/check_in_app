class EmployeesController < ApplicationController

  def index
		@employees = User.all
	end

	def show
		@employees = User.find(params[:id])
		@tasks = @employees.tasks
	end


end
