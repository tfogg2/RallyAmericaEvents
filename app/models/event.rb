class Event < ApplicationRecord
  has_many :activities
  has_many :event_teams
  has_many :teams, :through => :event_teams
  has_many :supplementals
  just_define_datetime_picker :start_date
  just_define_datetime_picker :end_date
end
