ActiveAdmin.register Volunteer do
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :event_ids, collection: Event.all.map { |event| [event.title] }
    column :date
    actions
  end

  filter :name
  filter :email
  filter :events
  filter :date


end
