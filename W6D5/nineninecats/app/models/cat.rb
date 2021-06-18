class Cat < ApplicationRecord

    CAT_COLORS = ['Orange', 'Black', 'Brown', 'White', 'Gray']

    validates :birth_date, presence: true
    validates :color, presence: true, inclusion: { in: CAT_COLORS }
    validates :name, presence: true
    validates :sex, presence: true
    validates :description, presence: true

    
end