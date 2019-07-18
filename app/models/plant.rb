class Plant < ApplicationRecord
    validates :name, :details, :price, :category, :quantity, presence: true
    belongs_to :user
end
