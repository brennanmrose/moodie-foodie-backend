class Api::V1::DessertsController < ApplicationController
  before_action :set_dessert, only: [:show, :update, :destroy]
  before_action :set_mood, only: [:show, :create, :index, :update, :destroy]

  # GET /desserts
  def index
    @desserts = @mood.desserts
    render json: @desserts
  end

  # GET /desserts/1
  def show
    render json: @dessert
  end

  # POST /desserts
  def create
    @dessert = @mood.desserts.build(dessert_params)

    if @dessert.save
      render json: @mood
    else
      render json: @dessert.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /desserts/1
  def update
    if @dessert.update(dessert_params)
      render json: @dessert
    else
      render json: @dessert.errors, status: :unprocessable_entity
    end
  end

  # DELETE /desserts/1
  def destroy
    if @dessert.destroy
      render json:  { data: "Dessert successfully destroyed" }, status: :ok
    else
      error_resp = {
        error: "Dessert not found and not destroyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dessert
      @dessert = Dessert.find(params[:id])
    end

    def set_mood
      @mood = Mood.find(params[:mood_id])
    end

    # Only allow a trusted parameter "white list" through.
    def dessert_params
      params.require(:dessert).permit(:name, :description, :recipe_url, :image_url)
    end
end
