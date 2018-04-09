class CreateTooks < ActiveRecord::Migration[5.1]
  def change
    create_table :tooks do |t|
      t.date :year
      t.string :semester
      t.float :grade
      t.string :professor

      t.belongs_to :tutor, index: true
      t.belongs_to :subject, index: true

      t.timestamps
    end
  end
end
