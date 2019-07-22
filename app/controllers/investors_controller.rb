class InvestorsController < ApplicationController
  before_action :set_investor, only: [:show, :update, :destroy]

  # GET /users
  def index
    @investors = Investor.all
    render json: @investors
  end
  #
  # # GET /users/1
  def show
     render json: @investor
    # investor_json = InvestorSerializer.new(@investor).serialized_json
    # render json: investor_json
  end

  # POST /users
  def create
    @investor = Investor.new(user_params)

    if @investor.save
      render json: @investor, status: :created, location: @investor
    else
      render json: @investor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @investor.update(investor_params)
      render json: @investor
    else
      render json: @investor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @investor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor
      @investor = Investor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def investor_params
      params.require(:investor).permit(:name, :fee)
    end
end
