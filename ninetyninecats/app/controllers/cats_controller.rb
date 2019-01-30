class CatsController < ApplicationController

  def index
    @cats = Cat.all 

    render :index
  end
  
  def show 
    @cat = Cat.find(params[:id])


  end

  def new
    @cat = Cat.new 

    if @cat.persisted?
      redirect_to :cat_url(cat)
    else
      redirect_to :cats_url
    end 

  end 

  def edit 
    @cat = Cat.find(params[:id])
  end 

end