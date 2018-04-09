class TutorController < ApplicationController
	def index
    @tutor = Tutor.order("RANDOM()").limit(5)
  end

  def show
    @tutor = Tutor.find(params[:id])
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
      :major,
      :age,
      :rate,
      :gpa,
      :score)
  end
end
