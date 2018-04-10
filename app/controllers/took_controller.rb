class TookController < ApplicationController
  def index
    @took = Took.where(:subject_id => params[:subject_id]).order(grade: :desc)
  end
end
