class MatchesController < ApplicationController


     def index
  @match = Match.all
  @team = Team.find(params[:team_id])

     end


	def new
     @matches = Match.new
	end

	def create
		
    @matches =  Match.new(add_params)
    @team = Team.find(params[:match][:team_id])
    teamid = params[:team_id]
    	puts "==============="
    	puts @team
		if @matches.save
			
			flash[:notice] = "Matches Created Sucessfully"
			 
			redirect_to team_matches_path(@team,match_id:@matches)
		else
	         flash[:alert] = "Matches Created failed"
			render 'matches/new'
		end 
	end

	def show
	  @team = Team.find(params[:id])
	   @t = @team.matches.first
	   @team_names = Team.find(@t.away_team_id)
	 

	end

	private

  def add_params
  params.require(:match).permit(:team_id,:away_team_id,:event_id,:match_date)
  end 



end
