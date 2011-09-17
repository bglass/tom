class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.integer :activity_id
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
