class AddInterviewerIdToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_reference :feedbacks, :interviewer, foreign_key: true
  end
end
