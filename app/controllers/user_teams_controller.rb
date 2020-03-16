class UserTeamsController < ApplicationController
	def create
     
     @user = UserTeam.create(user_id: params[:user],team_id: params[:team])
      flash[:sucess]="Welcome to new Team"
      redirect_to team_path(params[:team])

	end

	def destroy
     des = UserTeam.find_by(user_id: params[:id])
     des.destroy
     redirect_to teams_path
	end

end
