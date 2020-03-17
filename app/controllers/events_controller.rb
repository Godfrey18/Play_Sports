class EventsController < ApplicationController
 
  def new

  @events = Event.new

  end 

  def index
@events = Event.all
  end

  def create
   @events = Event.new(add_params)
	if @events.save
	   flash[:notice] = "Event Created Sucessfully"
	   redirect_to @events
	  end
	end

  def show
   @event = Event.find(params[:id])

  end
 
 def edit
  @events = Event.find(params[:id])
  end

  def update
    @events = Event.find(params[:id])
    if @events.update(add_params)
    flash[:notice]="updated Sucessfully"
    redirect_to @events
      end
  end

  def destroy
  @events = Event.find(params[:id])
  if @events.destroy
    flash[:notice] = "Deleted"
    redirect_to @events
  end
end

  private

  def add_params
  params.require(:event).permit(:name,:types,:no_players,:info)
  end 

end