class VendorsController < ApplicationController

  #create
  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create(sweet_params)
  end

  #read
  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])

  end

  #update

  #destroy

  #strong_params
  def vendor_params
    params.require(:vendor).permit(:name)
  end
end
