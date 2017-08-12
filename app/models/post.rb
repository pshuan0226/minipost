class Post < ApplicationRecord
    belongs_to :users, optional: true
    has_and_belongs_to_many :categories
    has_many :comments
end
