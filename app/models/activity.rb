class Activity < ApplicationRecord
  belongs_to :event
  just_define_datetime_picker :date
end
