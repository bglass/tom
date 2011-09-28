class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.integer :stampable_id
      t.string :stampable_type
      t.date :planned
      t.date :estimated
      t.date :actual

      t.timestamps
    end
  end
end
