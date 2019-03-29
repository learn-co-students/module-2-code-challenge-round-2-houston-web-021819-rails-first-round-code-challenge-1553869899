class VendorsweetsController < ApplicationController

    #create
    def new
      @vendorsweet = Vendorsweet.new
    end
  
    def create
      @vendorsweet = Vendorsweet.create(sweet_params)
    end
  
    #read
    def index
      @vendorsweets = Vendorsweet.all
    end
  
    def show
      @vendorsweet = Vendorsweet.find(params[:id])

    end
  
    #update
  
    #destroy
  
    #strong_params
    def vendor_params
      params.require(:vendorsweet).permit(:name)
    end
  end