class ByMonthsController < ApplicationController
  before_action :set_by_month, only: %i[ show update destroy ]

  # GET /by_months
  # GET /by_months.json

  def get_month
    @by_months = ByMonth.where(initials: params[:initials])
    render json: @by_months
  end  

  def index
    @by_months = ByMonth.all
  end

  # GET /by_months/1
  # GET /by_months/1.json
  def show
  end

  # POST /by_months
  # POST /by_months.json
  def create
    @by_month = ByMonth.new(by_month_params)

    if @by_month.save
      render :show, status: :created, location: @by_month
    else
      render json: @by_month.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /by_months/1
  # PATCH/PUT /by_months/1.json
  def update
    if @by_month.update(by_month_params)
      render :show, status: :ok, location: @by_month
    else
      render json: @by_month.errors, status: :unprocessable_entity
    end
  end

  # DELETE /by_months/1
  # DELETE /by_months/1.json
  def destroy
    @by_month.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_by_month
      @by_month = ByMonth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def by_month_params
      params.require(:by_month).permit(:name, :initials, :cases, :deaths, :suspects, :datetime)
    end
end
