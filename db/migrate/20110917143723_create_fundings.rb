class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.string :title
      t.string :abstract

      t.timestamps
    end
  end
end
