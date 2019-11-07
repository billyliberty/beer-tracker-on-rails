class Beer < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    validates :name, :style, :brewery, presence: true
end
