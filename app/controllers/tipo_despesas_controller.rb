class TipoDespesasController < ApplicationController
  before_action :set_tipo_despesa, only: %i[ show update destroy ]

  # GET /tipo_despesas
  def index
    @tipo_despesa = TipoDespesas.all

    render json: @tipo_despesa
  end

  # GET /tipo_despesas/1
  def show
    render json: @tipo_despesa
  end

  # POST /tipo_despesas
  def create
    @tipo_despesa = TipoDespesas.new(tipo_despesa_params)

    if @tipo_despesa.save
      render json: @tipo_despesa, status: :created, location: @tipo_despesa
    else
      render json: @tipo_despesa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_despesas/1
  def update
    if @tipo_despesa.update(tipo_despesa_params)
      render json: @tipo_despesa
    else
      render json: @tipo_despesa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_despesas/1
  def destroy
    @tipo_despesa.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_despesa
      @tipo_despesa = TipoDespesas.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_despesa_params
      params.require(:tipo_despesa).permit(:descricao)
    end
end
