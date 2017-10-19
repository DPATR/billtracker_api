class BillsController < OpenReadController # modified 10-19-17
  before_action :set_bill, only: [:show, :update, :destroy]

  # GET /bills
  def index
    @bills = Bill.all

    render json: @bills
  end

  # GET /bills/1
  def show
    render json: @bill
  end

  # POST /bills
  def create
    @bill = current_user.bills.build(bill_params) # modified 10-19-17

    if @bill.save
      render json: @bill, status: :created, location: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bills/1
  def update
    if @bill.update(bill_params)
      render json: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bills/1
  def destroy
    @bill.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bill
    @bill = current_user.bills.find(params[:id]) # modified 10-19-17
  end

  # Only allow a trusted parameter "white list" through.
  def bill_params
    params.require(:bill).permit(:creditor, :billing_month, :amount_due)
  end
end
