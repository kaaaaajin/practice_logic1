class User < ApplicationRecord
  validates :name, presence: true
  validates :height, presence: true, numericality: { greater_than: 0 }
  validates :weight, presence: true, numericality: { greater_than: 0 }

  def bmi
    height_in_meters = height.to_f / 100
    (weight.to_f / (height_in_meters ** 2)).round(2)
  end
  
  def bmi_category
    if bmi < 18.5
      "やせすぎ"
    elsif bmi < 25
      "普通体重"
    elsif bmi < 30
      "肥満（1度）"
    elsif bmi < 35
      "肥満（2度）"
    else
      "肥満（3度）"
    end
 end
end
