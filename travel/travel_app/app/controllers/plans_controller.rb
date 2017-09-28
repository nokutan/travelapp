class PlansController < ApplicationController
    before_action :setup_plan_tag,only:[:add_tag,:delete_tag]
    def show
       @plan=Plan.all
       #@plan_tag = plan_structure.tags
    end
    
    def add_plan
    end

    def edit_plan
    end
    
    def delete_plan
    end
    
    
end
