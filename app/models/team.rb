class Team < ApplicationRecord


  def self.car_classes
    %w(o nlo sp 2wd ol bspec group2 group5)
  end

  def self.competitor_type
    %w(national regional both)
  end

end
