class AddInterviewerIdToInterviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :interviews, :interviewer, foreign_key: true
  end
end
