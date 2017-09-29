class TagsController < ApplicationController
    #Tag一覧
   def index
      @tags = Tag.all
   end 
   
   def new
       @tag=Tag.new
   end
   
    def create
        @tag=Tag.new(post_params)
        if @tag.save
            redirect_to tags_path
        else
            render 'new'
        end
   end
   
   def edit
       @post=Tag.find(params[:id])
   end
   
   def update
       @tag=Tag.find(params[:id])
       if @tag.update(post_params)
           redirect_to tags_path
       else
           render 'edit'
       end
   end
   
   private
       def post_params
           params.require(:tag).permit(:title,:body,:url)
       end
   
end
