class Setting < ApplicationRecord
  has_one_attached :logo
  has_one_attached :favicon

  validates :favicon, presence: true
end
