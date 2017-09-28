class PlansController < ApplicationController
    before_action :setup_plan_tag,only:[:add_tag,:delete_tag]
    def show
       # @plan = Plan.first
       # @plan_tags=@plan.plan_tags
        
        @plan = plan_structure
        @plan_tags=@plan.plan_tags
    end
    
    
    #タグの一覧からプランに追加をする時のアクション
    def add_tag
        if @plan_tag.blank?
            @plan_tag=plan_structure.plan.build(tag_id: params[:tag_id])
        end
        @plan_tag.save
        redirect_to plan_structure
    end
    
    #def update_tag?
    
    #プランの画面からタグを消すときのアクション
    def delete_tag
        @plan_tag.destroy
        redirect_to plan_structure
    end
    
    #bef_act
    def setup_plan_tag!
        @plan_tag=plan_structure.plan_tags.find_by(tag_id: params[tag_id])
    end
    
end
