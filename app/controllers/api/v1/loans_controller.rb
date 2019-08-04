class Api::V1::LoansController < ApplicationController
  before_action :set_loan, only: [:show, :update, :destroy]


  def index
    @loans = Loan.all
    # render json: @loans
    loan_json = LoanSerializer.new(@loans)
    render json: loan_json
  end

  def show
    loan_json = LoanSerializer.new(@loan)
    render json: loan_json
      # render json: @loan
  end

  def create
    @loan = Loan.new(loan_params)

    if @loan.save
      render json: LoanSerializer.new(@loan), status: :created
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end



  def update
    if @loan.update(loan_params)
      render json: LoanSerializer.new(@loan), status: :ok
    else
      render json: @loan.errors, status: :unprocessable_entity
    end
  end

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
      params.require(:loan).permit(:borrower, :term, :amount, :pool_id, :rate, :close_date)
    end

end
