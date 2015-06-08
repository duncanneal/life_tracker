class LifeEventsController < ApplicationController
  before_action :set_life_event, only: [:edit, :update, :destroy]

  def index
    @life_events = LifeEvent.all.order(:date)
  end

  def new
    @life_event = LifeEvent.new
  end

  def edit
  end

  def create
     @life_event = LifeEvent.new(life_event_params)

    respond_to do |format|
      if @life_event.save
        format.html { redirect_to @life_event.person, notice: 'Life event was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @life_event.update(life_event_params)
        format.html { redirect_to @life_event.person, notice: 'Life event was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @life_event.destroy
    respond_to do |format|
      format.html { redirect_to @life_event.person, notice: 'Life event was successfully destroyed.' }
    end
  end

  private
    def set_life_event
      @life_event = LifeEvent.find(params[:id])
    end

    def life_event_params
      params.require(:life_event).permit(:title, :date, :description, :person_id)
    end
end
