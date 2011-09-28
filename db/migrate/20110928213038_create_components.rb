class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :title
      t.integer :category_id
      t.string :abstract
      t.integer :activity_id
      t.integer :technology_id
      t.string :status
      t.integer :qlevel_id

      t.timestamps
    end
  end
end
