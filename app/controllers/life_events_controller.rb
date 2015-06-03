class LifeEventsController < ApplicationController
  before_action :set_life_event, only: [:show, :edit, :update, :destroy]

  # GET /life_events
  def index
    @life_events = LifeEvent.all
  end

  # GET /life_events/1
  def show
  end

  # GET /life_events/new
  def new
    @life_event = LifeEvent.new
  end

  # GET /life_events/1/edit
  def edit
  end

  # POST /life_events
  def create
    @life_event = LifeEvent.new(life_event_params)

    respond_to do |format|
      if @life_event.save
        format.html { redirect_to @life_event, notice: 'Life event was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /life_events/1
  def update
    respond_to do |format|
      if @life_event.update(life_event_params)
        format.html { redirect_to @life_event, notice: 'Life event was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /life_events/1
  def destroy
    @life_event.destroy
    respond_to do |format|
      format.html { redirect_to life_events_url, notice: 'Life event was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_event
      @life_event = LifeEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_event_params
      params.require(:life_event).permit(:title, :year, :description)
    end
end
