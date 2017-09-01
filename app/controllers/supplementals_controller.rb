class SupplementalsController < ApplicationController
  before_action :set_event

  def index
    @suplemental = @event.supplementals.all
  end

  def new
    @supplemental = @event.supplementals.new
  end

  def show

  end

  def create
    @supplemental = @event.supplementals.new(supplemental_params)
    @supplemental.attachment = params[:supplemental][:attachment]
    @supplemental.save
    respond_to do |format|
      if @supplemental.save
        format.html { redirect_to event_path(@event), notice: 'Supplemental was successfully created.' }
        format.json { render :show, status: :created, location: @supplemental }
      else
        format.html { redirect_to event_path(@event), notice: 'Oops, something went wrong.' }
        format.json { render json: @supplemental.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @supplemental.update(supplemental_params)
        format.html { redirect_to event_path(@event), notice: 'Supplemental was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplemental }
      else
        format.html { render :edit }
        format.json { render json: @supplemental.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @supplemental.destroy
    respond_to do |format|
      format.html { redirect_to event_path(@event), notice: 'Supplemental was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def supplemental_params
    params.require(:supplemental).permit(:attachment, :event_id)
  end



end
