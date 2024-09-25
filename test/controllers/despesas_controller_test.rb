require "test_helper"

class DespesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @despesa = despesas(:one)
  end

  test "should get index" do
    get despesas_url, as: :json
    assert_response :success
  end

  test "should create despesa" do
    assert_difference("Despesa.count") do
      post despesas_url, params: { despesa: { categoria_id: @despesa.categoria_id, data: @despesa.data, descricao: @despesa.descricao, metodo_pagamento: @despesa.metodo_pagamento, status_despesa_id: @despesa.status_despesa_id, tipo_despesa_id: @despesa.tipo_despesa_id, user_id: @despesa.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show despesa" do
    get despesa_url(@despesa), as: :json
    assert_response :success
  end

  test "should update despesa" do
    patch despesa_url(@despesa), params: { despesa: { categoria_id: @despesa.categoria_id, data: @despesa.data, descricao: @despesa.descricao, metodo_pagamento: @despesa.metodo_pagamento, status_despesa_id: @despesa.status_despesa_id, tipo_despesa_id: @despesa.tipo_despesa_id, user_id: @despesa.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy despesa" do
    assert_difference("Despesa.count", -1) do
      delete despesa_url(@despesa), as: :json
    end

    assert_response :no_content
  end
end
