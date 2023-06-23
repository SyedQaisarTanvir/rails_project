class Organizer < ApplicationRecord
    validates :organizer_name, :organizer_email, :organizer_phone, presence: true
    validates :organizer_phone, length: { is: 11 }


    has_many :interviewers
end
