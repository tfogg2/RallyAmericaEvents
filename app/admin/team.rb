ActiveAdmin.register Team do
  permit_params :driver_name, :co_driver_name, :competitor_type, :car_type, :car_number, :car_class, :event_ids => []
  index do
    selectable_column
    id_column
    column :car_number
    column :competitor_type
    column :car_class
    column :car_type
    column :driver_name
    column :co_driver_name
    actions
  end

  filter :email
  filter :co_driver_name
  filter :competitor_type
  filter :car_class

  form do |f|
    f.inputs do
      f.input :driver_name
      f.input :co_driver_name
      f.input :car_type
      f.input :car_number
      f.input :car_class, collection: Team.car_classes.map {|tm| [car_class_label(tm), tm] }, include_blank: false, class: "form-control"
      f.input :competitor_type, collection: Team.competitor_type.map {|ct| [competitor_type_label(ct), ct] },  include_blank: false
      # f.inputs "Events" do
        # f.has_many :events_teams do |s|
          # s.input :title
        # end
      # end
      f.inputs :events, collection: Event.all.map { |event| [event.title, event.id] }
    end
    f.actions
  end

end
