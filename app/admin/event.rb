ActiveAdmin.register Event do
  permit_params :title, :location, :start_date, :end_date, :description, :start_date_date , :start_date_time_hour, :start_date_time_minute, :end_date_date, :end_date_time_hour, :end_date_time_minute, :team_ids => []
  index do
    selectable_column
    id_column
    column :title
    column :location
    column :start_date
    column :end_date
    column :description
    actions
  end

  filter :title
  filter :location
  filter :start_date
  filter :description

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :location
      f.input :start_date, as: :just_datetime_picker
      f.input :end_date, as: :just_datetime_picker
    end
    f.actions
  end

end
