class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.string :title
      t.string :number
      t.integer :milestone_id
      t.string :status
      t.boolean :accepted

      t.timestamps
    end
  end
end
