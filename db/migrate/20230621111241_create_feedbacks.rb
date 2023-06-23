class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :feedback_id
      t.string :feedback_message
      t.string :feedback_person
      t.string :feedback_desg

      t.timestamps
    end
  end
end
