class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json
  def index
    @reviews = Review.all
    respond_with(@reviews)
  end

  def show
    respond_with(@review)
  end

  def new
    @review = Review.new
    respond_with(@review)
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.save!
    flash[:notice] = 'Review was successfully created.' if @review.save
    redirect_to @review.place
  end

  def update
    flash[:notice] = 'Review was successfully updated.' if @review.update(review_params)
    redirect_to @review.place
  end

  def destroy
    @review.destroy
    redirect_to @review.place
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:user_id, :place_id, :description, :stars, :image, :remote_image_url)
    end
end
