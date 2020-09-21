class Trader < ApplicationRecord
    validates :content, {presence: true, length: {maximum: 100}}

    has_many :items
    has_many :sales

    Trader.joins(:items)
     
end
