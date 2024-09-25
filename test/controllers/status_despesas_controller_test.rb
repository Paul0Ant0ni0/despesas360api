require "test_helper"

class StatusDespesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_despesa = status_despesas(:one)
  end

  test "should get index" do
    get status_despesas_url, as: :json
    assert_response :success
  end

  test "should create status_despesa" do
    assert_difference("StatusDespesa.count") do
      post status_despesas_url, params: { status_despesa: { descricao: @status_despesa.descricao } }, as: :json
    end

    assert_response :created
  end

  test "should show status_despesa" do
    get status_despesa_url(@status_despesa), as: :json
    assert_response :success
  end

  test "should update status_despesa" do
    patch status_despesa_url(@status_despesa), params: { status_despesa: { descricao: @status_despesa.descricao } }, as: :json
    assert_response :success
  end

  test "should destroy status_despesa" do
    assert_difference("StatusDespesa.count", -1) do
      delete status_despesa_url(@status_despesa), as: :json
    end

    assert_response :no_content
  end
end
