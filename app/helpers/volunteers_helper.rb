module VolunteersHelper

  def past_position_label(previous_position)
    label = "Rally Chair"
    label = "Rally CoChair" if previous_position == 'rally_cochair'
    label = "Rally Chair assistant" if previous_position == 'rally_chair_assistant'
    label = "General Advisor" if previous_position == 'general_advisor'
    label = "RA Liason" if previous_position == 'ra_liason'
    label = "Rally Master" if previous_position == 'rally_master'
    label = "Assistant Rally Master" if previous_position == 'assitant_rally_master'
    label = "Supp Regs" if previous_position == 'supp_regs'
    label = "Website Master" if previous_position == 'website_master'
    label = "Registrar" if previous_position == 'registrar'
    label = "Registrar Advisor" if previous_position == 'registrar_advisor'
    label = "Chief of Controls" if previous_position == 'chief_controls'
    label = "Assistant Chief of Controls" if previous_position == 'asst_chief_of_controls'
    label = "Head of Worker Recruiting" if previous_position == 'head_of_worker_recruiting'
    label = "Chief of Emergency Services" if previous_position == 'chief_of_emergency_services'
    label = "Assistant Chief of Emergency Services" if previous_position == 'asst_chief_of_emergency_services'
    label = "Chief of Communications" if previous_position == 'chief_of_communications'
    label = "Assistant Chief of Communications" if previous_position == 'asst_chief_of_communications'
    label = "Chief of Press" if previous_position == 'chief_of_press'
    label = "Chief of Spectator Safety" if previous_position == 'chief_of_spectator_safety'
    label = "Equipment Manager" if previous_position == 'equipment_manager'
    label = "Chief of Hospitality" if previous_position == 'chief_of_hospitality'
    label = "Chief of Service" if previous_position == 'chief_of_service'
    label = "Service Radio" if previous_position == 'service_radio'
    label = "Chief of Bannering" if previous_position == 'chief_of_bannering'
    label = "Banner Check" if previous_position == 'banner_check'
    label = "Treasurer" if previous_position == 'treasurer'
    label = "Chief of Zero Cars" if previous_position == 'chief_of_zero_cars'
    label = "Chief of Tech" if previous_position == 'chief_of_tech'
    label = "Chief of Tech Advisor" if previous_position == 'chief_of_tech_advisor'
    label = "Scrutineer" if previous_position == 'scrutineer'
    label = "Assistant Scrutineer" if previous_position == 'asst_scrutineer'
    label = "Chief of Sweep" if previous_position == 'chief_of_sweep'
    label
  end

end
