require 'test_helper'

class DudesControllerTest < ActionController::TestCase
  setup do
    @dude = dudes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dudes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dude" do
    assert_difference('Dude.count') do
      post :create, dude: { activity: @dude.activity, bio: @dude.bio, email: @dude.email, name: @dude.name, neighborhood_preference: @dude.neighborhood_preference, phone: @dude.phone, picture: @dude.picture }
    end

    assert_redirected_to dude_path(assigns(:dude))
  end

  test "should show dude" do
    get :show, id: @dude
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dude
    assert_response :success
  end

  test "should update dude" do
    patch :update, id: @dude, dude: { activity: @dude.activity, bio: @dude.bio, email: @dude.email, name: @dude.name, neighborhood_preference: @dude.neighborhood_preference, phone: @dude.phone, picture: @dude.picture }
    assert_redirected_to dude_path(assigns(:dude))
  end

  test "should destroy dude" do
    assert_difference('Dude.count', -1) do
      delete :destroy, id: @dude
    end

    assert_redirected_to dudes_path
  end
end
