ActiveAdmin.register Supplemental do
  permit_params :attachment, :event_id

  index do
    selectable_column
    id_column
    column :event_id
    actions
  end

  filter :event_id

  form do |f|
    f.inputs do
      f.input :attachment, as: :file, label: false, class: "form-control"
      f.inputs :event, collection: Event.all.map { |event| [event.title, event.id] }
    end
    f.actions
  end
end
