class Api::V1::FoodsController < ApplicationController
  before_action :set_food, :set_mood, only: [:show, :update, :destroy]
  before_action :set_mood, only: [:show, :create, :index, :update, :destroy]

  # GET /foods
  def index
    @foods = @mood.foods
    render json: @foods
  end

  # GET /foods/1
  def show
    render json: @food
  end

  # POST /foods
  def create
    @food = @mood.foods.build(food_params)

    if @food.save
      render json: @mood
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  def update
    if @food.update(food_params)
      render json: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    def set_mood
      @mood = Mood.find(params[:mood_id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_params
      params.require(:food).permit(:name, :description, :recipe_url, :image_url)
    end
end
