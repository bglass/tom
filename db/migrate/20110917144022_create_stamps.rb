class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.date :planned
      t.date :estimated
      t.date :actual

      t.timestamps
    end
  end
end
