class MatchesController < ApplicationController

	def new
     @matches = Match.new
	end

	def create
		
    @matches =  Match.new(add_params)
   
		if @matches.save
			
			flash[:notice] = "Matches Created Sucessfully"
			redirect_to @matches
		else
	         flash[:alert] = "Matches Created failed"
			render 'matches/new'
		end 
	end

	def show
	 @matches =Match.find(params[:id])
	end

	private

  def add_params
  params.require(:match).permit(:team_id,:away_team_id,:event_id,:match_date)
  end 



end
