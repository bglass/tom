class CreateMonthlyReports < ActiveRecord::Migration
  def change
    create_table :monthly_reports do |t|
      t.integer :activity_id
      t.string :text
      t.boolean :final

      t.timestamps
    end
  end
end
