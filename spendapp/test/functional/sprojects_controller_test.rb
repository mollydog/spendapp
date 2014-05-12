require 'test_helper'

class SprojectsControllerTest < ActionController::TestCase
  setup do
    @sproject = sprojects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sproject" do
    assert_difference('Sproject.count') do
      post :create, sproject: { amtremaining: @sproject.amtremaining, budget: @sproject.budget, date: @sproject.date, name: @sproject.name, note: @sproject.note, spend: @sproject.spend }
    end

    assert_redirected_to sproject_path(assigns(:sproject))
  end

  test "should show sproject" do
    get :show, id: @sproject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sproject
    assert_response :success
  end

  test "should update sproject" do
    put :update, id: @sproject, sproject: { amtremaining: @sproject.amtremaining, budget: @sproject.budget, date: @sproject.date, name: @sproject.name, note: @sproject.note, spend: @sproject.spend }
    assert_redirected_to sproject_path(assigns(:sproject))
  end

  test "should destroy sproject" do
    assert_difference('Sproject.count', -1) do
      delete :destroy, id: @sproject
    end

    assert_redirected_to sprojects_path
  end
end
