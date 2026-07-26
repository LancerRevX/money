class Record < ApplicationRecord
  validates :value, presence: true, numericality: { other_than: 0 }
  validates :tags, length: { minimum: 1 }

  has_and_belongs_to_many :tags
end
