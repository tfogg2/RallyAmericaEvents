module TeamsHelper

  def car_class_label(car_class)
    label = "O"
    label = "NLO" if car_class == 'nlo'
    label = "SP" if car_class == 'sp'
    label = "2wd" if car_class == '2wd'
    label = "OL" if car_class == 'ol'
    label = "B-spec" if car_class == 'bspec'
    label = "Group 2" if car_class == 'group2'
    label = "Group 5" if car_class == 'group5'
    label
  end

  def competitor_type_label(competitor_type)
    label = "R"
    label = "N" if competitor_type == "national"
    label = "N/R" if competitor_type == "both"
    label
  end
end
