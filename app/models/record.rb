class Record < ApplicationRecord
  validates :value, presence: true
  validates :tag, presence: true

  belongs_to :tag
end
