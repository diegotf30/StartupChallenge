class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :gender
      t.string :occupation
      t.integer :age

      t.float :rate
      t.float :gpa
      t.float :score

      t.timestamps
    end
  end
end
