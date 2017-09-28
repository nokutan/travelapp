class DynamicPagesController < ApplicationController
  def home
      @tags = Tag.all.order(created_at: 'desc')
  end
end
