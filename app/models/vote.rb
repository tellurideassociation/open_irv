class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :candidate

  validates :cast_at, absence: true, on: :update
end
