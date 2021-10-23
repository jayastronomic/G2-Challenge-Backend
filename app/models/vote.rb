class Vote < ApplicationRecord
    belongs_to :visitor
    belongs_to :employee
end
