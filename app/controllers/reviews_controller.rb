
class ReviewsController < ApplicationController

    def create
        @newR = params["newReviewCopy"]

        @review = Review.new

        # byebug
        @review.user_id = @newR["user_id"]
        @review.bodega_id= @newR["bodega_id"]
        # @review.overallreview= @newR["   "]
        @review.latenight= @newR["latenight"]
        @review.coffeenumber= @newR["coffeenumber"]
        @review.coffeetext= @newR["coffeetext"]
        @review.catnumber= @newR["catnumber"]
        @review.cattext= @newR["cattext"]
        @review.sandwichnumber= @newR["sandwichnumber"]
        @review.sandwichtext= @newR["sandwichtext"]
        @review.hoursnumber= @newR["hoursnumber"]
        @review.hourstext= @newR["hourstext"]
        @review.beernumber= @newR["beernumber"]
        @review.beertext= @newR["beertext"]
        @review.snacknumber= @newR["snacknumber"]
        @review.snacktext= @newR["snacktext"]

        @review.save
        render json: @review
    end


    def index
        @reviews = Review.all
        render json: @sp
    end

    def show
        @review = Review.find_by(params[:id])
        render json: @review
    end


    # def bulkcreate

    #     # for each SP obj in API, persist to DB:
    #     # ADD DURATION & ORDER #
    #     @seqPoses = params["_json"]
    #     @seqPoses.each do | sp |
    #         newsp = Review.new
    #         newsp.sequence_id =  sp["sequence_id"]
    #         newsp.pose_id =  sp["pose_id"]
    #         newsp.order_no = sp["order_no"]
    #         newsp.duration = sp["duration"]
    #         newsp.save
    #     end

    #     @seqId = @seqPoses[0]["sequence_id"].to_i
    #     #@seq = Review.find_by(@seqId)
    #     @seq = Review.all.find_all{ |sp|
    #         sp.sequence_id == @seqId
    #     }
    #     render json: @seq
    #     # render json for just the one sequence
    # end


    # def seqposes
    #     # @seq = Review.find(params[:id])
    #     # @seq_id = @seq.sequence_id

    #     @seq = (params[:id]).to_i
    #     @poses_for_seq = Review.all.find_all{ |ea|
    #     ea.sequence_id == @seq
    #     }

    #     render json: @poses_for_seq
    # end


end