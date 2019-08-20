class BodegasController < ApplicationController

    def index
        @bodegas = Bodega.all
        render json: @bodegas
    end

    def show
        @bodega = Bodega.find(params[:id])
        render json: @bodega
    end


    def bodegas_reviews  #review Bodega w all its reviews nested under it.   
        # serializer - is to solve this problem (joins)
        # .attributes will turn active record record into a hash, but is bad practice.
        # @bodegas = active record records you can interact w sort of like ruby hashes,
        # but theyre not Ruby objects
        @bodegas = Bodega.all
        @reviews = Review.all
        @output_hash = {}


        @bodegas.each{ |bodega|
            # bodega.merge( {:all_reviews => {} } )   undefined method `merge' for #<Bodega:0x00007f9a605e4988>
            
            temp  = @reviews.select{ |review|
                review.bodega_id == bodega.id
            }

            @bodegaObj = Bodega.find(bodega.id)
        
            @output_hash[bodega.id] = bodega        # this alone works
            # @output_hash[bodega.id.to_s + "r"] = temp       
            @output_hash["all_reviews"] || @output_hash["all_reviews"] = []
            @output_hash["all_reviews"].push({bodega.id => temp })  # Only has #5 !!!

            # Failed efforts at nesting
            # @output_hash[bodega.id][:test] = "TEST"   can't write unknown attribute `test`
            #  @output_hash[bodega.id].merge!(:reviews => temp )
            # no2 =@output_hash[bodega.id][:reviews] = temp
            # @output_hash.merge(no2)
        }

        render json: @output_hash
    end




end