require 'test_helper'

class NomesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nome" do
    assert_difference('Nome.count') do
      post :create, :nome => { }
    end

    assert_redirected_to nome_path(assigns(:nome))
  end

  test "should show nome" do
    get :show, :id => nomes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => nomes(:one).to_param
    assert_response :success
  end

  test "should update nome" do
    put :update, :id => nomes(:one).to_param, :nome => { }
    assert_redirected_to nome_path(assigns(:nome))
  end

  test "should destroy nome" do
    assert_difference('Nome.count', -1) do
      delete :destroy, :id => nomes(:one).to_param
    end

    assert_redirected_to nomes_path
  end
end
