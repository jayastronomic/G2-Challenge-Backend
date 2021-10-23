class Employee < ApplicationRecord
    has_many :votes
    has_many :visitors, through: :votes
end
