class CreateInterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :interviews do |t|
      t.integer :interview_id
      t.string :interview_date

      t.timestamps
    end
  end
end
