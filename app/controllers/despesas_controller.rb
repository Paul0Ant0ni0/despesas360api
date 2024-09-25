class DespesasController < ApplicationController
  before_action :set_despesa, only: %i[ show update destroy ]

  # GET /despesas
  def index
    @despesa = Despesa.all

    render json: @despesa
  end

  # GET /despesas/1
  def show
    render json: @despesa
  end

  # POST /despesas
  def create
    @despesa = Despesa.new(despesa_params)

    if @despesa.save
      render json: @despesa, status: :created, location: @despesa
    else
      render json: @despesa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /despesas/1
  def update
    if @despesa.update(despesa_params)
      render json: @despesa
    else
      render json: @despesa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /despesas/1
  def destroy
    @despesa.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_despesa
      @despesa = Despesa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def despesa_params
      params.require(:despesa).permit(:user_id, :tipo_despesa_id, :data, :descricao, :categoria_id, :metodo_pagamento, :status_despesa_id)
    end
end
