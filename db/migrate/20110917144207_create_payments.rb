class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :milestone_id
      t.integer :amount
      t.boolean :invoiced
      t.boolean :paid
      t.integer :stamp_id

      t.timestamps
    end
  end
end
