class Live < ApplicationRecord
  default_scope -> { order(date: :asc) }
  has_many_attached :images
end
