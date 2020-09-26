class Nitem < ApplicationRecord
    validates :name, {presence: true}
    validates :price, {presence: true}
    validates :cost, {presence: true}
    validates :taxin, {presence: true}
    

    belongs_to :trader
    has_many :sales
end
