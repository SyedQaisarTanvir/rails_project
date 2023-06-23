class Interviewer < ApplicationRecord
    validates :name, :email, :phone, presence: true
    validates :phone, length: { is: 11 }

    has_many :feedbacks
    has_many :interviews
    has_many :candidates, through: :interviews
    belongs_to :organizer, optional: true
end
