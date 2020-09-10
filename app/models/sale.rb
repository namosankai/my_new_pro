class Sale < ApplicationRecord
    validates :name, {presence: true}
    
    belongs_to :trader
    belongs_to :item
    belongs_to :expence
end
