class TagsController < ApplicationController
    #Tag一覧
   def index
      @tags = Tag.all
   end 
   
   def new
       @tag=Tag.new
   end
   
<<<<<<< HEAD
    def create
        @tag=Tag.new(post_params)
        if @tag.save
            redirect_to tags_path
        else
            render 'new'
        end
    end
   
   def edit
       @tag=Tag.find(params[:id])
   end
   
   def update
       @tag=Tag.find(params[:id])
       if @tag.update(post_params)
           redirect_to tags_path
       else
           render 'edit'
       end
   end
   
   
   def destroy
       @tag=Tag.find(params[:id])
       @tag.destroy
       redirect_to tags_path
   end
   
   def test
=======
   def show
        @tag = Tag.find(params[:id]) 
   end
   
   
   
   def create
       #render plain: params[:post].inspect
       Tag.create(post_params)
       redirect_to tags_path
   end
   
   def destoroy
       @post = Post.find(params[:id]) 
       @post.destoroy
       redirect_to tags_path
>>>>>>> 95caf8ed15f06cf071d4e7c50aa7b2caabeb9a9c
   end
   
   private
       def post_params
           params.require(:tag).permit(:title,:body,:url)
       end
   
end
