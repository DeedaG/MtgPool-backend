class Api::V1::LoansController < ApplicationController
  before_action :set_loan, only: [:show, :update, :destroy]


  def index
    @loans = Loan.all
    # render json: @loans
    loan_json = LoanSerializer.new(@loans).serialized_json
    render json: loan_json
  end

  def show
      render json: @loan

  end

  def create
    @loan = Loan.new(loan_params)

    if @loan.save
      render json: @loan, status: :ok
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end


  def update
    if @loan.update(loan_params)
      render json: @loan
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @loan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def loan_params
      params.require(:loan).permit(:borrower, :term, :amount, :rate, :close_date)
    end

end
