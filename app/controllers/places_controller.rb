class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json
  def index
    @places = Place.all
    respond_with(@places)
  end

  def show
    respond_with(@place)
  end

  def new
    @place = Place.new
    respond_with(@place)
  end

  def edit
  end
  def home
    @places = Place.paginate(page: params[:page], per_page: 12).order('created_at DESC')
    if params[:type]
      @places = Place.where(category: params[:type].upcase).paginate(page: params[:page], per_page: 12).order('created_at DESC')
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
  def create
    @place = Place.new(place_params)
    @place.user_id = current_user.id
    @place.save
    flash[:notice] = 'Place was successfully created.' if @place.save
    respond_with(@place)
  end

  def update
    flash[:notice] = 'Place was successfully updated.' if @place.update(place_params)
    respond_with(@place)
  end

  def destroy
    @place.destroy
    respond_with(@place)
  end

  private
    def set_place
      @place = Place.find(params[:id])
    end

    def place_params
      params.require(:place).permit(:title, :description, :user_id, :address, :image, :category, :remote_image_url)
    end
end
