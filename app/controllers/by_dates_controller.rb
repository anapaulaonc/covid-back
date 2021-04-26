class ByDatesController < ApplicationController
  before_action :set_by_date, only: %i[ show update destroy ]

  def get_date
    @by_dates = ByDate.where(initials: params[:initials])
    render json: @by_dates
  end  

  # GET /by_dates
  # GET /by_dates.json
  def index
    @by_dates = ByDate.all
  end

  # GET /by_dates/1
  # GET /by_dates/1.json
  def show

  end

  # POST /by_dates
  # POST /by_dates.json
  def create
    @by_date = ByDate.new(by_date_params)

    if @by_date.save
      render :show, status: :created, location: @by_date
    else
      render json: @by_date.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /by_dates/1
  # PATCH/PUT /by_dates/1.json
  def update
    if @by_date.update(by_date_params)
      render :show, status: :ok, location: @by_date
    else
      render json: @by_date.errors, status: :unprocessable_entity
    end
  end

  # DELETE /by_dates/1
  # DELETE /by_dates/1.json
  def destroy
    @by_date.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_by_date
      @by_date = ByDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def by_date_params
      params.require(:by_date).permit(:name, :initials, :cases, :deaths, :suspects, :datetime)
    end
end
