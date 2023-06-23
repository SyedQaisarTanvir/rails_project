class Interview < ApplicationRecord
    belongs_to :interviewer, optional: true 
    belongs_to :candidate, optional: true
end
