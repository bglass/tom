class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :venue
      t.integer :milestone_id

      t.timestamps
    end
  end
end
