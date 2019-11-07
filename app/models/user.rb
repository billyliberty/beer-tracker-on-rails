class User < ActiveRecord::Base
    has_secure_password

    has_many :reviews
    has_many :beers, through: :reviews

    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true


end
