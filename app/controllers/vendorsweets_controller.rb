class VendorsweetsController < ApplicationController
    def index
       @vendorsweets = Sweet.all
    end

    def new
        @vendorsweet = VendorSweet.new
    end

    def create 
        @vendorsweet = VendorSweet.create(ven_params)
        # redirect_to vendors/:id
    end

    def ven_params 
        params.require(:vendorsweet).permit(:name, :vendor_id, :sweet_id)
  
    end
end