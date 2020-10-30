class Api::V1::InvestorsController < ApplicationController
  before_action :set_investor, only: [:show, :update, :destroy]


  def index
    @investors = Investor.all
    render json: InvestorSerializer.new(@investors)
  end

  def show
      render json: @investor
      render json: InvestorSerializer.new(@investor)
  end


  def create
    @investor = Investor.new(investor_params)

    if @investor.save
      render json: InvestorSerializer.new(@investor), status: :created
    else
      render json: @investor.errors, status: :unprocessable_entity
    end
  end


  def update
    if @investor.update(investor_params)
      render json: InvestorSerializer.new(@investor), status: updated
    else
      render json: @investor.errors, status: :unprocessable_entity
    end
  end


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
