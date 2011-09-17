class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :company
      t.string :city
      t.string :country
      t.string :url

      t.timestamps
    end
  end
end
