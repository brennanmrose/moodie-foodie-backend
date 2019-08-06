class Api::V1::DietaryRestrictionsController < ApplicationController
	before_action :set_dietary_restriction, only: [:show, :update, :destroy]

  # GET /dietary_restrictions
  def index
    @dietary_restrictions = DietaryRestriction.all

    render json: @dietary_restrictions
  end

  # GET /dietary_restrictions/1
  def show
    render json: @dietary_restriction
  end

  # POST /dietary_restrictions
  def create
    @dietary_restriction = DietaryRestriction.new(dietary_restriction_params)

    if @dietary_restriction.save
      render json: @dietary_restriction, status: :created, location: @dietary_restriction
    else
      render json: @dietary_restriction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dietary_restrictions/1
  def update
    if @dietary_restriction.update(dietary_restriction_params)
      render json: @dietary_restriction
    else
      render json: @dietary_restriction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dietary_restrictions/1
  def destroy
    @dietary_restriction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dietary_restriction
      @dietary_restriction = DietaryRestriction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dietary_restriction_params
      params.require(:dietary_restriction).permit(:vegetarian, :vegan, :peanut_free, :gluten_free, :soy_free, :user_id)
    end
end
