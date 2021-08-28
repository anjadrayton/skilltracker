class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.float :compound_rate
      t.integer :compound_time_block
      t.integer :start_date
      t.integer :goal_end_date
      t.integer :goal_success_rate
      t.integer :rep_time_block
      t.integer :reps_per_time_block

      t.timestamps
    end
  end
end
