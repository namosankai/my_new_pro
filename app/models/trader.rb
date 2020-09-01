class Trader < ApplicationRecord
    validates :content, {presence: true, length: {maximum: 100}}
end
