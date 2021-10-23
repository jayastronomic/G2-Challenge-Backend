class Visitor < ApplicationRecord
    has_many :votes
    has_many :employees, through: :votes

    validates :name, presence: true
    validates :name, uniqueness: true
    
end
