class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.integer :phase_id
      t.boolean :achieved

      t.timestamps
    end
  end
end
