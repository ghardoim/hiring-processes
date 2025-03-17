class CreateHiringProcesses < ActiveRecord::Migration[8.0]
  def change
    create_table :hiring_processes do |t|
      t.string :company
      t.string :position
      t.string :recruiter
      t.text :status
      t.boolean :reached_me

      t.timestamps
    end
  end
end
