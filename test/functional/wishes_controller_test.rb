require 'test_helper'

class WishesControllerTest < ActionController::TestCase
  setup do
    @wish = wishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wish" do
    assert_difference('Wish.count') do
      post :create, wish: { arrival: @wish.arrival, category_id: @wish.category_id, description: @wish.description, priority: @wish.priority, status_id: @wish.status_id, title: @wish.title, user_id: @wish.user_id }
    end

    assert_redirected_to wish_path(assigns(:wish))
  end

  test "should show wish" do
    get :show, id: @wish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wish
    assert_response :success
  end

  test "should update wish" do
    put :update, id: @wish, wish: { arrival: @wish.arrival, category_id: @wish.category_id, description: @wish.description, priority: @wish.priority, status_id: @wish.status_id, title: @wish.title, user_id: @wish.user_id }
    assert_redirected_to wish_path(assigns(:wish))
  end

  test "should destroy wish" do
    assert_difference('Wish.count', -1) do
      delete :destroy, id: @wish
    end

    assert_redirected_to wishes_path
  end
end
