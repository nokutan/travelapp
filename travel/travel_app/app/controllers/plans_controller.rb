class PlansController < ApplicationController
    #before_action :setup_plan_tag,only:[:add_tag,:delete_tag]
    def index
       @plan=Plan.all
    end
    
   def new
   end
   
   def create
       #render plain: params[:post].inspect
       Plan.create(post_params)
       redirect_to plans_path
   end
   
   private
       def post_params
           params.require(:post).permit(:title,:body,:url)
       end

end
