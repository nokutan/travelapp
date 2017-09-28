class TagsController < ApplicationController
    #Tag一覧
   def index
      @tags = Tag.all
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
