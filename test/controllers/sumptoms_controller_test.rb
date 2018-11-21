require 'test_helper'

class SumptomsControllerTest < ActionController::TestCase
  setup do
    @sumptom = sumptoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sumptoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sumptom" do
    assert_difference('Sumptom.count') do
      post :create, sumptom: { animal_id: @sumptom.animal_id, problem_id: @sumptom.problem_id }
    end

    assert_redirected_to sumptom_path(assigns(:sumptom))
  end

  test "should show sumptom" do
    get :show, id: @sumptom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sumptom
    assert_response :success
  end

  test "should update sumptom" do
    patch :update, id: @sumptom, sumptom: { animal_id: @sumptom.animal_id, problem_id: @sumptom.problem_id }
    assert_redirected_to sumptom_path(assigns(:sumptom))
  end

  test "should destroy sumptom" do
    assert_difference('Sumptom.count', -1) do
      delete :destroy, id: @sumptom
    end

    assert_redirected_to sumptoms_path
  end
end
