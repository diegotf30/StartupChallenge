class Subject < ApplicationRecord
	has_many :took
	has_many :tutor, through: :took 
end
