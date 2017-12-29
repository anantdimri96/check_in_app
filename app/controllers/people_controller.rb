class PeopleController < ApplicationController

  def index
    @users=User.all
  end
def show
  @tasks=current_user.tasks
end

end
