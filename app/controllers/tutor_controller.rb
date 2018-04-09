class TutorController < ApplicationController
	def index
    @tutor = Tutor.all
  end

  def show
    @tutor = Tutor.find(params[:id])
  end

  def new
    @tutor = Tutor.new
  end

  def create
    @tutor = Tutor.new(tutor_params)

    @tutor.save

    redirect_to @tutor
  end

  private

  def tutor_params
    params.require(:tutor).permit(
      :name,
      :gender,
      :occupation,
      :age,
      :rate,
      :gpa,
      :score)
  end
end
