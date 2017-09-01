class EventVolunteer < ApplicationRecord
  belongs_to :event
  belongs_to :volunteer
end
