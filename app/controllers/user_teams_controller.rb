class UserTeamsController < ApplicationController
	def create
     
     @user = UserTeam.create(user_id: params[:user],team_id: params[:team])
      if @user.save
      @team = Team.find(params[:team])
      flash[:notice]=" Hy #{current_user.first_name}  Welcome to  Team #{@team.team_name}"
      redirect_to team_path(params[:team])
      else  
      flash[:alert]="already memeber of other  Team"
      redirect_to teams_path
      end
	end

	def destroy
     des = UserTeam.find_by(user_id: params[:id])
     des.destroy
      flash[:alert]="Sucessfully Exited from Team"
     redirect_to teams_path
	end

end
