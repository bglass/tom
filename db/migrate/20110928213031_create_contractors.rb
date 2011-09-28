class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.integer :activity_id
      t.integer :entity_id
      t.string :role

      t.timestamps
    end
  end
end
