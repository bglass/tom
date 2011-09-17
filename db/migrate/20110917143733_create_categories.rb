class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :categorytype
      t.string :abstract

      t.timestamps
    end
  end
end
