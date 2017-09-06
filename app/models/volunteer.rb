class Volunteer < ApplicationRecord
  has_many :event_volunteers
  has_many :events, :through => :event_volunteers
  just_define_datetime_picker :birthday

  def self.past_positions
    %w(rally_chair rally_cochair rally_chair_assistant general_advisor ra_liason rally_master assitant_rally_master supp_regs website_master registrar registrar_advisor chief_controls asst_chief_of_controls head_of_worker_recruiting chief_of_emergency_services asst_chief_of_emergency_services chief_of_communications asst_chief_of_communications chief_of_press chief_of_spectator_safety equipment_manager chief_of_hospitality chief_of_service service_radio chief_of_bannering banner_check treasurer chief_of_zero_cars chief_of_tech chief_of_tech_advisor scrutineer asst_scrutineer chief_of_sweep blah)
  end

  def self.shirt_sizes
    %w(youth_small youth_medium youth_large women_small women_medium women_large men_small men_medium men_large men_x_large men_xx_large )
  end
end
