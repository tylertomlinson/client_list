class ReviewsController < ApplicationController

  def index
    reviews = Review.by_client_id(params[:client_Id])
    render json: reviews
  end

  def show
    render json: one_review([:id])
  end

  private

  def one_review(id)
    Review.find(params[:id])
  end
end
