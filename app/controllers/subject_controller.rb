class SubjectController < ApplicationController
  def index
    @subject = Subject.where(:area => params[:area])
  end
end
