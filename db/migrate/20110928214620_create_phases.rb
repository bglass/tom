class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.integer :activity_id
      t.string :description

      t.timestamps
    end
  end
end
