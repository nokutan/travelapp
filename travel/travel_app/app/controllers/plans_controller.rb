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
    @plan=Plan.new
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
    @plan = Plan.find(params[:id])
    #@tags = Tag.where(@plan.tags.include?)
    @tags=Tag.all-@plan.tags.all
    
    #task :task_name => [:dependent, :tasks] do
      
    #end
    # <% @tags.each do |tag| %>
    #     <%= simple_format tag.title %>
    #     <%#= link_to '[add]', plan_path(:tag_id tag.id)%>
    #   　<%= link_to 'test', controller: "plans", action: "add_tag", company_id: tag.id>  
    #     <a href = " #{tag.url} " Target="_blank" ></a>
        
    #     <%= link_to tag.url, tag.url%>
    # <% end %>
    
    #redirect_to plans_path
   #@plan = Plan.find(params[:id])
    
    # render html: 'add_tag'
    # @tags = Tag.all
    # @plan = Plan.find(params[:id]) 
    # @plan.tags.build(tag: params[:tag])
    # @plan.tags.new()
    # if @plan.save
    #   redirect_to plans_path
    # else
    #   render 'new'
    # end
  end
  
  def add_tag_update
    @plan=Plan.new
    @plan=Plan.find_by(id: params[:plan_id])
    @tag=Tag.new
    @tag=Tag.find_by(id: params[:tag_id])
    @plan.tags << @tag
    #redirect_to 
    redirect_to plans_path
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
