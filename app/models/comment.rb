class Comment < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :post
    has_and_belongs_to_many :categories
end
