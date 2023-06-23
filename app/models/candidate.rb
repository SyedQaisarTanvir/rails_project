class Candidate < ApplicationRecord
    validates :candidate_name, :candidate_email, :candidate_phone, :candidate_cv,  presence: true

    has_many :interviews
    has_many :interviewers, through: :interviews
    has_many :feedbacks
end
