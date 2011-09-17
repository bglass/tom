class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :title
      t.integer :category_id
      t.string :abstract
      t.integer :activity_id
      t.float :sizex
      t.float :sizey
      t.integer :technology_id
      t.string :status
      t.string :qlevel

      t.timestamps
    end
  end
end
