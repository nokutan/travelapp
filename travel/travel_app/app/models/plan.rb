class Plan < ApplicationRecord
    #PlanとTagの多対多の関係
    has_many :plan_tags
    has_many :tags ,through: :plan_tags
end
