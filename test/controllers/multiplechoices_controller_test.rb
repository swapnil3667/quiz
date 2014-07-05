require 'test_helper'

class MultiplechoicesControllerTest < ActionController::TestCase
  setup do
    @multiplechoice = multiplechoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multiplechoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multiplechoice" do
    assert_difference('Multiplechoice.count') do
      post :create, multiplechoice: { choice1: @multiplechoice.choice1, choice2: @multiplechoice.choice2, choice3: @multiplechoice.choice3, choice4: @multiplechoice.choice4 }
    end

    assert_redirected_to multiplechoice_path(assigns(:multiplechoice))
  end

  test "should show multiplechoice" do
    get :show, id: @multiplechoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multiplechoice
    assert_response :success
  end

  test "should update multiplechoice" do
    patch :update, id: @multiplechoice, multiplechoice: { choice1: @multiplechoice.choice1, choice2: @multiplechoice.choice2, choice3: @multiplechoice.choice3, choice4: @multiplechoice.choice4 }
    assert_redirected_to multiplechoice_path(assigns(:multiplechoice))
  end

  test "should destroy multiplechoice" do
    assert_difference('Multiplechoice.count', -1) do
      delete :destroy, id: @multiplechoice
    end

    assert_redirected_to multiplechoices_path
  end
end
