class Costomer < ApplicationRecord
    validates :name, {presence: true}
end
