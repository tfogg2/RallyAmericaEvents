ActiveAdmin.register Activity do
  permit_params :title, :description, :location, :time, :date, :event_id
  index do
    selectable_column
    id_column
    column :title
    column :location
    column :date
    column :time
    actions
  end

  filter :title
  filter :location
  filter :time
  filter :date

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :location
      f.input :date, as: :just_datetime_picker
      f.inputs :event, collection: Event.all.map { |event| [event.title, event.id] }
    end
    f.actions
  end

end
