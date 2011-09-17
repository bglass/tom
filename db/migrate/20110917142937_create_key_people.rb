class CreateKeyPeople < ActiveRecord::Migration
  def change
    create_table :key_people do |t|
      t.integer :activity_id
      t.integer :person_id
      t.string :role

      t.timestamps
    end
  end
end
