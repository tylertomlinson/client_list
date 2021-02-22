class ReviewsController < ApplicationController

  def index 
    reviews = Review.where(client_id: params[:client_Id])
    render json:  reviews
  end

  def show
  end
end
