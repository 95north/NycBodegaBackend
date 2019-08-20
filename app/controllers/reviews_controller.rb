
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

    def update
        @editedReview = params["editedReview"]

        @review = Review.find(params[:id])

        @review.user_id = @editedReview["user_id"]
        @review.bodega_id= @editedReview["bodega_id"]
        @review.latenight= @editedReview["latenight"]
        @review.coffeenumber= @editedReview["coffeenumber"]
        @review.coffeetext= @editedReview["coffeetext"]
        @review.catnumber= @editedReview["catnumber"]
        @review.cattext= @editedReview["cattext"]
        @review.sandwichnumber= @editedReview["sandwichnumber"]
        @review.sandwichtext= @editedReview["sandwichtext"]
        @review.hoursnumber= @editedReview["hoursnumber"]
        @review.hourstext= @editedReview["hourstext"]
        @review.beernumber= @editedReview["beernumber"]
        @review.beertext= @editedReview["beertext"]
        @review.snacknumber= @editedReview["snacknumber"]
        @review.snacktext= @editedReview["snacktext"]

        @review.save
        render json: @review
    end


    def index
        @reviews = Review.all
        render json: @sp
    end

    def show
        @review = Review.find(params[:id])
        render json: @review
    end

    def destroy
        Review.find(params[:id]).destroy
        render json: @reviews
    end

end