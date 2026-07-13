# frozen_string_literal: true

class Blog < Rhino::RhinoModel
  include Rhino::BelongsToOrganization
  include Discard::Model

  rhino_filters :title, :published
  rhino_sorts :title, :published, :created_at
  rhino_fields :id, :title, :body, :published, :created_at
  validates :title, length: { maximum: 255 }, allow_nil: true
  validates :published, inclusion: { in: [true, false] }, allow_nil: true
end
