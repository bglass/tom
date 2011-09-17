class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :nickname
      t.string :abstract
      t.string :contract
      t.integer :funding_id
      t.integer :funding_amount
      t.integer :startdate_id
      t.integer :enddate_id
      t.integer :project_id

      t.timestamps
    end
  end
end
