class AddCandidateIdToInterviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :interviews, :candidate, foreign_key: true
  end
end
