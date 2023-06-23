class AddOrganizerIdToInterviewers < ActiveRecord::Migration[5.2]
  def change
    add_reference :interviewers, :organizer, foreign_key: true
  end
end
