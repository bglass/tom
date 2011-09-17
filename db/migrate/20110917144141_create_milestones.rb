class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.integer :activity_id
      t.integer :ccn_id
      t.boolean :achieved
      t.integer :stamp_id

      t.timestamps
    end
  end
end
