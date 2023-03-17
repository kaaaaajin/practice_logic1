class WeightsController < ApplicationController
    
    def new
       @weight = Weight.new
      
    end
    
    def create
      weight = Weight.new(weight_params)
      weight.save
      redirect_to weights_path
      
        
    end
    
    
    private
    
    def weight_params
      params.require(:weight).permit(:height,:weight)
    end
    
    def calc
        height 
        
    end
    
end
