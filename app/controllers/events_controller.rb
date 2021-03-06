class EventsController < ApplicationController

  def index
    @events = Event.all

  end

  def show
    @event = Event.find(params[:id])
    @activities = @event.activities.all
    @supplemental = @event.supplementals.last
    @teams = @event.teams.all
  end

  def new
    @event = Event.new()
  end

  def create
    @event = Event.new(event_params)
    respond_to do |format|
        if @event.save
          format.html { redirect_to event_path(@event), notice: 'Event was successfully created.' }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { redirect_to event_path(@event), notice: 'Oops, something went wrong.' }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
     end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        @event.logo = params[:event][:logo]
        format.html { redirect_to event_path(@event), notice: 'event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to event_path(@event), notice: 'event was successfully deleted.' }
      format.json { head :no_content }
    end
  end



  private


  def event_params
    params.require(:event).permit(:title, :logo, :location, :start_date, :end_date, :description)
  end
end
