class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.integer :foundry_id
      t.string :type
      t.float :size
      t.string :name

      t.timestamps
    end
  end
end
