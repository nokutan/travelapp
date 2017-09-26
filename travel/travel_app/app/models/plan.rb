class Plan < ApplicationRecord
    #PlanとTagの多対多の関係
    has_many :plan_tags
end
