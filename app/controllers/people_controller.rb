class PeopleController < ApplicationController
    before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @person = Person.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)

  respond_to do |format|
    if @person.save
      redirect_to @person, notice: 'Person was successfully created.'
    else
      render :new
    end
  end

  def update
    if @person.update(person_params)
      redirect_to @person, notice: 'Person was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /persons/1
  def destroy
    @person.destroy
    redirect_to people_url, notice: 'Person was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:school, :life_event, :person_id)
    end
end
