class Post < ApplicationRecord
  default_scope -> { order(date: :desc) }
  has_many_attached :images
end
