class CreateCompletionDates < ActiveRecord::Migration[6.0]
  def change
    create_table :completion_dates do |t|
      t.date :date
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
