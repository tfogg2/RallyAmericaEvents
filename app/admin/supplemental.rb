ActiveAdmin.register Supplemental do
  belongs_to :event
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
    end
    f.actions
  end
end
