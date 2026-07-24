class Tag < ApplicationRecord
    has_many :children, class_name: 'Tag', foreign_key: 'parent_id'
    belongs_to :parent, class_name: 'Tag'
end
