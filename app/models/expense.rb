class Expense < ApplicationRecord
    validates :name, {presence: true}
    validates :cost, {presence: true}

    has_many :sales
end
