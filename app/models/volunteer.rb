class Volunteer < ApplicationRecord
  has_many :event_volunteers
  has_many :events, :through => :event_volunteers
  just_define_datetime_picker :birthday
end
