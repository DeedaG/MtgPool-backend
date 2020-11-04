class Api::V1::PoolsController < ApplicationController
  before_action :set_pool, only: [:show, :update, :destroy]


  def index
    # @pools = Pool.all
    # render json: @pools
    if logged_in?
      @pools = Pool.all
      render json: PoolSerializer.new(@pools)
    else
      render json: {
        error: "You must be logged in to see pools"
      }
    end
  end

  def show
     render json: @pool
    # pool_json = PoolSerializer.new(@pool).serialized_json
    # render json: pool_json
  end

  def create
    @pool = Pool.new(pool_params)
    # @investor = Investor.find_by(id: @pool.investor_id)
    @loans = params[:loans].map do |loan|
      # loan[:attributes]
      loan[:id]
        end

    @loans.reject!{ |loan| loan.nil? || loan.empty? }

    @pool.loans = Loan.find(@loans.uniq)
    if @pool.save
binding.pry

      render json: PoolSerializer.new(@pool), status: :created
    else
      error_resp = {
        error: @pool.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end


  def update
    @loans = params[:loans]
      .reject!{ |loan| loan.nil? || loan.empty? }
      .map do |lid|
              lid[:id]
            end
    @pool.loans = Loan.find(@loans.uniq)
    if @pool.update(pool_params)
      render json: PoolSerializer.new(@pool), status: :ok
    else
      error_resp = {
        error: @pool.errors.full_messages.to_sentence
      }
      render json: @pool.errors, status: :unprocessable_entity
    end
  end


  def destroy
    if @pool.destroy
      render json: {data: "Pool deleted"}, status: :ok
    else
      error_resp = {
        error:  "Pool not found"
      }
      render json: @pool.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pool
      @pool = Pool.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pool_params
      params.require(:pool).permit(:name, :user_id, :pool_amount, :comments,
        :investor_id, {:loans_attributes => [:id, :pool_id]})
    end

end
