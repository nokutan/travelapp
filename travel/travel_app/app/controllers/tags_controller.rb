class TagsController < ApplicationController
    #Tag一覧
   def index 
      @tags = Tag.all
   end 
end
