class UserTeamsController < ApplicationController
	def create
     

	end

	def destroy
     des = UserTeam.find_by(user_id: params[:id])
     des.destroy
     redirect_to teams_path
	end

end
