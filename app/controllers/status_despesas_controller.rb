class StatusDespesasController < ApplicationController
  before_action :set_status_despesa, only: %i[ show update destroy ]

  # GET /status_despesas
  def index
    @status_despesas = StatusDespesa.all

    render json: @status_despesas
  end

  # GET /status_despesas/1
  def show
    render json: @status_despesa
  end

  # POST /status_despesas
  def create
    @status_despesa = StatusDespesa.new(status_despesa_params)

    if @status_despesa.save
      render json: @status_despesa, status: :created, location: @status_despesa
    else
      render json: @status_despesa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /status_despesas/1
  def update
    if @status_despesa.update(status_despesa_params)
      render json: @status_despesa
    else
      render json: @status_despesa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /status_despesas/1
  def destroy
    @status_despesa.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_despesa
      @status_despesa = StatusDespesa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def status_despesa_params
      params.require(:status_despesa).permit(:descricao)
    end
end
