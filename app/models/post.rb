class Post < ApplicationRecord
    has_many :comments
    validates :title, :text, presence: true
    belongs_to :user
end
