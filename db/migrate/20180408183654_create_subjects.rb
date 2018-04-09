class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :TECid
      t.string :name
      t.string :area

      t.timestamps
    end
  end
end
