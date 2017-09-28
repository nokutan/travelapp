class TagsController < ApplicationController
    #Tag一覧
   def index
      @tags = Tag.all
   end 
   
   def new
   end
   
    def create
   #render plain: params[:post].inspect
   #Tag.create(post_params)
    @post=Tag.new(post_params)
        if @post.save
            redirect_to tags_path
        else
            render plain: @post.errors.inspect
        end
   end
   
   private
       def post_params
           params.require(:post).permit(:title,:body,:url)
       end
   
end
