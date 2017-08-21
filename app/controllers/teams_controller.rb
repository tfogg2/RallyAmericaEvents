class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
    @events = Event.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(team_params)
    respond_to do |format|
        if @team.save
          format.html { redirect_to teams_path, notice: 'Team was successfully created.' }
          format.json { render :show, status: :created, location: @team }
        else
          format.html { redirect_to new_team_path, notice: 'Oops, something went wrong.' }
          format.json { render json: @team.errors, status: :unprocessable_entity }
        end
    end
  end

  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to team_path(@team), notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to team_path(@team), notice: 'Team was successfully deleted.' }
      format.json { head :no_content }
    end
  end



  private


  def team_params
    params.require(:team).permit(:driver_name, :co_driver_name, :competitor_type, :car_type, :car_number, :car_class,:events, :event_ids => [])
  end



end
