class Took < ApplicationRecord
	belongs_to :tutor
	belongs_to :subject

  def subject
    Subject.find_by_id(self[:subject_id])
  end
end
