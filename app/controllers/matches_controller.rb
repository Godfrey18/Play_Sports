class MatchesController < ApplicationController

     def index
     	@matches = Match.all
    @team = Team.find(params[:team_id])
    @h_a_matches = @team.matches
     end


	def new
     @matches = Match.new
	end

	def create
    @matches =  Match.new(add_params)
    @team = Team.find(params[:match][:team_id])
    teamid = params[:team_id]
		if @matches.save
		flash[:notice] = "Matches Created Sucessfully"	 
			redirect_to team_matches_path(params[:match][:team_id])
		else
	         flash[:alert] = "Matches Created failed"
			render 'matches/new'
		end 
	end

	def show
	  
	 @matches = Match.find(params[:id])
	 @teams = Team.find(@matches.team_id)
	 @h_a_matches = @teams.matches

	end

	def edit
    @matches = params[:id]
	end

	def update
    @matches = params[:id]
    @matches.update(add_params)
     if @matches
     	flash[:notice] = "updated"
     	redirect_to @matches
     else
          flash[:notice] = "failed"
     end

	end

	private

  def add_params
  params.require(:match).permit(:team_id,:away_team_id,:event_id,:match_date)
  end 



end
