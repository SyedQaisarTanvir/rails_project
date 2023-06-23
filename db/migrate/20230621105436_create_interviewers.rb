class CreateInterviewers < ActiveRecord::Migration[5.2]
  def change
    create_table :interviewers do |t|
      t.integer :interviewer_id
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
