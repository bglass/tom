class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :project_id
      t.integer :activity_id
      t.integer :funding_id
      t.string :title
      t.string :nickname
      t.string :abstract
      t.string :contract
      t.integer :funding_amount
      t.date :start
      t.integer :duration

      t.timestamps
    end
  end
end
