class CreateFoundries < ActiveRecord::Migration
  def change
    create_table :foundries do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :url

      t.timestamps
    end
  end
end
