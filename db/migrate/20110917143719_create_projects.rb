class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :abstract
      t.integer :person_id

      t.timestamps
    end
  end
end
