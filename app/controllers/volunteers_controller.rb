class VolunteersController < ApplicationController
  before_action :set_volunteer, only: [:show, :edit, :update, :destroy]

  # GET /volunteers
  # GET /volunteers.json
  def index
    @volunteers = Volunteer.all
  end

  # GET /volunteers/1
  # GET /volunteers/1.json
  def show
  end

  # GET /volunteers/new
  def new
    @volunteer = Volunteer.new
  end

  # GET /volunteers/1/edit
  def edit
  end

  # POST /volunteers
  # POST /volunteers.json
  def create
    @user = current_user
    @volunteer = @user.volunteers.new(volunteer_params)


    respond_to do |format|
      if @volunteer.save
        format.html { redirect_to @user, notice: 'Volunteer was successfully created.' }
        format.json { render :show, status: :created, location: @volunteer }
      else
        format.html { render :new }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /volunteers/1
  # PATCH/PUT /volunteers/1.json
  def update
    @user = current_user
    respond_to do |format|
      if @volunteer.update(volunteer_params)
        format.html { redirect_to @user, notice: 'Volunteer was successfully updated.' }
        format.json { render :show, status: :ok, location: @volunteer }
      else
        format.html { render :edit }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.json
  def destroy
    @user = current_user
    @volunteer.destroy
    respond_to do |format|
      format.html { redirect_to @user, notice: 'Volunteer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def volunteer_params
      params.require(:volunteer).permit(:user, :name, :email, :address, :city, :state, :zipcode, :phone_number, :birthday, :shirt_size, :previous_position, :previous_rallys, :position, :qualifications, :medical, :sfi_number, :sweep_equipment, :first_time_volunteer, :ham_operator, :ham_number, :radio_equipment, :friends,
      :start_date, :end_date, :event_ids => [])
    end
end
