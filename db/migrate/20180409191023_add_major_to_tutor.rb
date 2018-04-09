class AddMajorToTutor < ActiveRecord::Migration[5.1]
  def change
    add_column :tutors, :major, :string
  end
end
