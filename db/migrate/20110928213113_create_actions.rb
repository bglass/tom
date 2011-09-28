class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :activity_id
      t.integer :assignee_id
      t.string :title
      t.date :due
      t.date :closed

      t.timestamps
    end
  end
end
