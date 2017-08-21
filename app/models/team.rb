class Team < ApplicationRecord
  has_many :event_teams
  has_many :events, :through => :event_teams

  def self.car_classes
    %w(o nlo sp 2wd ol bspec group2 group5)
  end

  def self.competitor_type
    %w(national regional both)
  end

end
