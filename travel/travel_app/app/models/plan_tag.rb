class PlanTag < ApplicationRecord
  belongs_to :plan
  belongs_to :tag
end
