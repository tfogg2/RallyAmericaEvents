class Event < ApplicationRecord
  has_many :activities
  has_many :event_teams
  has_many :teams, :through => :event_teams
  has_many :event_volunteers
  has_many :volunteers, :through => :event_volunteers
  has_many :supplementals
  just_define_datetime_picker :start_date
  just_define_datetime_picker :end_date
  has_attached_file :logo
  validates_attachment_content_type :logo, content_type: ['image/jpeg', 'image/png', 'image/gif']
end
