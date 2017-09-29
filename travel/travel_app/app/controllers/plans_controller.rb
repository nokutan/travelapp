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

    @tags = Tag.all
    @plan = Plan.find(params[:id]) 
    if  @plan.tags.create(
         title: params[:tag_title],
         body: params[:tag_body],
         url: params[:tag_url])
     
      print("save!!!!!!!!!!!!!!!!1")
      redirect_to plan_path
   
    end
  end
  
  
  
  def delete_tag
    #@plan = Plan.find(params[:id]) 
    #@plan.T
    Tag.where(id: params[:id]).destroy
  end
  
  
  private
    def plan_params
       params.require(:plan).permit(:title)
    end

end
