class Feedback < ApplicationRecord
    validates :feedback_message, :feedback_person, :feedback_desg, presence: true

    belongs_to :interviewer, optional: true
    belongs_to :candidate, optional: true
end
