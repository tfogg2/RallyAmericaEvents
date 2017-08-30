ActiveAdmin.register Activity do
  permit_params :title, :description, :location, :time, :date, :event_id
  # has_many :events, :through => :events_teams
  # filter :events, :join_table => :events_teams
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
      # f.input :time, as: :time, class: "form-control datepicker"
      # f.input :date, as: :date, start_year: Date.today.year, end_year: Date.today.year + 10, order: [:month, :day, :year]
      f.inputs :event, collection: Event.all.map { |event| [event.title, event.id] }
    end
    f.actions
  end

end
