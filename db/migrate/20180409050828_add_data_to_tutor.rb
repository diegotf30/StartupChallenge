class AddDataToTutor < ActiveRecord::Migration[5.1]
  def change
    add_column :tutors, :avatar, :boolean
  end
end
