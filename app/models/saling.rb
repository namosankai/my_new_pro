class Saling < ApplicationRecord
    validates :target, {presence: true}
    validates :resalt, {presence: true}
    validates :cash, {presence: true}
    validates :credit, {presence: true}
    validates :gift, {presence: true}
    validates :lunch, {presence: true}
    validates :night, {presence: true}
    validates :takeout, {presence: true}
    validates :coupon, {presence: true}

end
