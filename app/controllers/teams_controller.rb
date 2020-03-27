class TeamsController < ApplicationController

	def new
   @teams= Team.new()
	end

	def index
    @teams=Team.all
	end

   def create
    @teams= Team.new(add_params)
    if @teams.save
    	@teams.user_teams.create(user:current_user, team:@teams)
    	flash[:notice] = "Team Created Sucessfull"
    	redirect_to @teams
	end

end
	def show
	@teams= Team.find(params[:id])
   
	end

	def edit

	end 

	def update

	end 

	def destroy

	end

private

  def add_params

 params.require(:team).permit(:team_name)

  end

end