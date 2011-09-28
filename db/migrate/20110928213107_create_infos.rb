class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :informable_id
      t.string :informable_type
      t.string :title
      t.string :text
      t.string :url

      t.timestamps
    end
  end
end
