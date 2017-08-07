class ActivitiesController < ApplicationController
  before_action :set_event


  def index
    @activities = @event.activities.all
  end

  def show
    @activity = @event.activities.find(params[:id])
  end

  def new
    @activity = @event.activities.new
  end

  def edit
  end

  def create
    @activity = @event.activities.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to event_path(@event), notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { redirect_to event_path(@event), notice: 'Oops, something went wrong.' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to event_path(@event), notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to event_path(@event), notice: 'Activity was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def activity_params
    params.require(:activity).permit(:title, :description, :time, :location, :date)
  end

end
