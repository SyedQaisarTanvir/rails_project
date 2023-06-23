class AddCandidateIdToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_reference :feedbacks, :Candidate, foreign_key: true
  end
end
