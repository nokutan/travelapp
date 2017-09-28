class PlanTag < ApplicationRecord
  #タグの独占を防ぐ
  belongs_to :plan 
  belongs_to :tag
end
