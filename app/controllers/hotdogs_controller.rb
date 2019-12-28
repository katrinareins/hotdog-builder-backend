class HotdogsController < ApplicationController
    def index
        hotdogs = Hotdog.all
        render json: hotdogs
      end 
    
      def create
        hotdog = Hotdog.create(hotdog_params)
        render json: hotdog
      end
    
      def update
        hotdog = Hotdog.find_by(params[:id])
        render json: hotdog
      end 
    
      def destroy
        data = {message: "Hotdog has been deleted"}
        hotdog = Hotdog.find(params[:id])
        hotdog.delete()
        render json: data 
      end 

      private

      def hotdog_params
        params.require(:hotdog).permit(:id, :condiment, :user_id)
      end 
end
