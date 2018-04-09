class CreateAvailableBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :available_blocks do |t|
      t.string :start
      t.string :end
      t.integer :day

      t.belongs_to :tutor, index: true

      t.timestamps
    end
  end
end
