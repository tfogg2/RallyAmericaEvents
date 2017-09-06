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

  def shirt_size_label(shirt_size)
    label = "Youth Small"
    label = "Youth Medium" if shirt_size == 'youth_medium'
    label = "Youth Large" if shirt_size == 'youth_large'
    label = "Women Small" if shirt_size == 'women_small'
    label = "Women Medium" if shirt_size == 'women_medium'
    label = "Women Large" if shirt_size == 'women_large'
    label = "Men Small" if shirt_size == 'men_small'
    label = "Men Medium" if shirt_size == 'men_medium'
    label = "Men Large" if shirt_size == 'men_large'
    label = "Men X-Large" if shirt_size == 'men_x_large'
    label = "Men XX-Large" if shirt_size == 'men_xx_large'
    label
  end

  def past_rally_label(past_rally)
    label = "Sno*Drift 2005-2017"
    label = "100 Acre Wood 2005-2016" if past_rally == "100_acre_wood"
    label = "Oregon Trail Rally 2005-2016" if past_rally == "oregon_trail_rally"
    label = "Olympus Rally 2005-2016" if past_rally == "olympus_rally"
    label = "STPR 2005-2016" if past_rally == "stpr"
    label = "New England Forest Rally 2005-2016" if past_rally == "nefr"
    label = "Ojibwe 2005-2016" if past_rally == "ojibwe"
    label = "LSPR 2005-2016" if past_rally == "lspr"
    label = "Rally Colorado 2005-2009" if past_rally == "rally_colorado"
    label = "Show - Me Rally 2013-2016" if past_rally == "show_me_rally"
    label = "Sno*Drift Summer 2015-2016" if past_rally == "sno_drift_summer"
    label = "Nemadji Winter Rally 2014-2016" if past_rally == "nemadji_winter_rally"
    label
  end

end
