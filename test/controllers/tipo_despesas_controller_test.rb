require "test_helper"

class TipoDespesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_despesa = tipo_despesas(:one)
  end

  test "should get index" do
    get tipo_despesas_url, as: :json
    assert_response :success
  end

  test "should create tipo_despesa" do
    assert_difference("TipoDespesa.count") do
      post tipo_despesas_url, params: { tipo_despesa: { descricao: @tipo_despesa.descricao } }, as: :json
    end

    assert_response :created
  end

  test "should show tipo_despesa" do
    get tipo_despesa_url(@tipo_despesa), as: :json
    assert_response :success
  end

  test "should update tipo_despesa" do
    patch tipo_despesa_url(@tipo_despesa), params: { tipo_despesa: { descricao: @tipo_despesa.descricao } }, as: :json
    assert_response :success
  end

  test "should destroy tipo_despesa" do
    assert_difference("TipoDespesa.count", -1) do
      delete tipo_despesa_url(@tipo_despesa), as: :json
    end

    assert_response :no_content
  end
end
