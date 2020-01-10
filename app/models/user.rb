class User < ApplicationRecord
    has_many :favorites
    has_many :recipes, through: :favorites

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
end
