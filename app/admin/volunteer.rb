ActiveAdmin.register Volunteer do
  # belongs_to :user
  # navigation_menu :user
  index do
    selectable_column
    id_column
    column :user
    column :name
    column :email
    column :event_ids, collection: Event.all.map { |event| [event.title] }
    column :date
    actions
  end

  filter :user
  filter :name
  filter :email
  filter :events
  filter :date


end
