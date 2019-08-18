class Api::V1::DrinksController < ApplicationController
  before_action :set_drink, :set_mood, only: [:show, :update, :destroy]
  before_action :set_mood, only: [:show, :create, :index, :update, :destroy]

  # GET /drinks
  def index
    @drinks = @mood.drinks
    render json: @drinks
  end

  # GET /drinks/1
  def show
    render json: @drink
  end

  # POST /drinks
  def create
    @drink = @mood.drinks.build(drink_params)
    if @drink.save
      render json: @mood
    else
      render json: @drink.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drinks/1
  def update
    if @drink.update(drink_params)
      render json: @drink
    else
      render json: @drink.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drinks/1
  def destroy
    @drink.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink
      @drink = Drink.find(params[:id])
    end

    def set_mood
      @mood = Mood.find(params[:mood_id])
    end

    # Only allow a trusted parameter "white list" through.
    def drink_params
      params.require(:drink).permit(:name, :description, :drink_url, :image_url)
    end
end
