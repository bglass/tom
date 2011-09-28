class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.integer :entity_id
      t.string :type
      t.float :size
      t.string :name

      t.timestamps
    end
  end
end
