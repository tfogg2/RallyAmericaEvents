ActiveAdmin.register Event do
  permit_params :logo, :title, :location, :start_date, :end_date, :description, :start_date_date , :start_date_time_hour, :start_date_time_minute, :end_date_date, :end_date_time_hour, :end_date_time_minute, :team_ids => []
  index do
    selectable_column
    id_column
    column :title
    column :location
    column :start_date
    column :end_date
    actions
  end

  filter :title
  filter :location
  filter :start_date

  form do |f|
    f.inputs do
      f.input :logo, as: :file
      f.input :title
      f.input :location
      f.input :start_date, as: :just_datetime_picker
      f.input :end_date, as: :just_datetime_picker
    end
    f.actions
  end

end
