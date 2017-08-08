class Supplemental < ApplicationRecord
  belongs_to :event
  has_attached_file :attachment
  validates_attachment_content_type :attachment, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
end
