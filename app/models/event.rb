class Event < ApplicationRecord
  has_many :activities
  has_many :teams
  has_many :supplementals
end
