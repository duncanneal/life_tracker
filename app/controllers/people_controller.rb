class PeopleController < ApplicationController
    before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
    @schools = @person.schools.order(:start_year)
    @life_events = @person.life_events.order(:date)
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(person_params)
    redirect_to @person, notice: 'New Person Created'
  end

  def edit
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @person.destroy
    redirect_to @person, notice: 'Person was successfully destroyed.'
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:first_name, :last_name)
    end
end
