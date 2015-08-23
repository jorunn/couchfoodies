require 'test_helper'

class CookingShowsControllerTest < ActionController::TestCase
  setup do
    @cooking_show = cooking_shows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cooking_shows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cooking_show" do
    assert_difference('CookingShow.count') do
      post :create, cooking_show: { country: @cooking_show.country, description: @cooking_show.description, name: @cooking_show.name, picture: @cooking_show.picture, years: @cooking_show.years }
    end

    assert_redirected_to cooking_show_path(assigns(:cooking_show))
  end

  test "should show cooking_show" do
    get :show, id: @cooking_show
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cooking_show
    assert_response :success
  end

  test "should update cooking_show" do
    patch :update, id: @cooking_show, cooking_show: { country: @cooking_show.country, description: @cooking_show.description, name: @cooking_show.name, picture: @cooking_show.picture, years: @cooking_show.years }
    assert_redirected_to cooking_show_path(assigns(:cooking_show))
  end

  test "should destroy cooking_show" do
    assert_difference('CookingShow.count', -1) do
      delete :destroy, id: @cooking_show
    end

    assert_redirected_to cooking_shows_path
  end
end
