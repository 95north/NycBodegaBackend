class BodegasController < ApplicationController

    def index
        @bodegas = Bodega.all
        render json: @bodegas
    end

    def show
        @bodega = Bodega.find(params[:id])
        render json: @bodega
    end



end