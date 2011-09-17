class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :activity_id
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
