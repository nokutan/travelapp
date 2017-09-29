class PlansController < ApplicationController
  #before_action :setup_plan_tag,only:[:add_tag,:delete_tag]
  def index
    @plan=Plan.all
    #@plan_tag = plan_structure.tags
  end
  
  def show
      @plan = Plan.find(params[:id]) 
  end
  
  def new
  end
  
  def create
    #render plain: params[:plan].inspect
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to plans_path
    else
      render 'new'
    end
  end
  
  def edit
    @plan = Plan.find(params[:id]) 
    @plan.destoroy
    redirect_to plans_path
  end
  
  def destoroy
    @plan = Plan.find(params[:id]) 
    @plan.destoroy
    redirect_to plans_path
  end
  
    
  def add_tag
    #render html: 'add_tag'
    @tags = Tag.all
    @plan = Plan.find(params[:id]) 
    
    #@plan.tags.build(tag:)
    #@plan.tags.new(params[:tag])
   
  end
  
  def delete_tag
    @plan = Plan.find(params[:id]) 
    @plan.tags.destoroy(tag_id: params[:tag_id])
  end
  
  
  private
    def plan_params
       params.require(:plan).permit(:title)
    end

end
