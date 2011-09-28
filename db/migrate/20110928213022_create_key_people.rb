class CreateKeyPeople < ActiveRecord::Migration
  def change
    create_table :key_people do |t|
      t.integer :person_id
      t.integer :personable_id
      t.string :personable_type
      t.string :role

      t.timestamps
    end
  end
end
