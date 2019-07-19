class Post < ApplicationRecord
    validates :title, :text, :category, presence: true
    belongs_to :user
end
