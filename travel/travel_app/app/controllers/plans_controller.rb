class PlansController < ApplicationController
    before_action :setup_plan_tag,only:[:add_tag,:delete_tag]
    def show
       @plan=Plan.all
       
       @plan.count.times do |i|
         @plan_tags=@plan[i].tags
       end
    end
    
   def new
   end
   
   def create
       #render plain: params[:post].inspect
       Tag.create(post_params)
       redirect_to tags_path
   end
   
   private
       def post_params
           params.require(:post).permit(:title,:body,:url)
       end
   
   
    
end
