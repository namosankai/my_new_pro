class Report < ApplicationRecord
    validates :date, {presence: true}
    validates :group, {presence: true}
    validates :people, {presence: true}
    validates :feed, {presence: true}
    validates :report_txt, {presence: true}
    
end
