class SweetsController < ApplicationController
  
  #create
  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.create(sweet_params)
  end

  #read
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
    
  end

  #update

  #destroy

  #strong_params
  def sweet_params
    params.require(:sweet).permit(:name)
  end

end
