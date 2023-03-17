class Weight < ApplicationRecord
    validates :height, presence: true
    validates :weight, presence: true
end
