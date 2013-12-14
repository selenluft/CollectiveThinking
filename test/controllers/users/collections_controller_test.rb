require 'test_helper'

class Users::CollectionsControllerTest < ActionController::TestCase
  setup do
    @users_collection = users_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_collection" do
    assert_difference('Users::Collection.count') do
      post :create, users_collection: { description: @users_collection.description, title: @users_collection.title }
    end

    assert_redirected_to users_collection_path(assigns(:users_collection))
  end

  test "should show users_collection" do
    get :show, id: @users_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_collection
    assert_response :success
  end

  test "should update users_collection" do
    patch :update, id: @users_collection, users_collection: { description: @users_collection.description, title: @users_collection.title }
    assert_redirected_to users_collection_path(assigns(:users_collection))
  end

  test "should destroy users_collection" do
    assert_difference('Users::Collection.count', -1) do
      delete :destroy, id: @users_collection
    end

    assert_redirected_to users_collections_path
  end
end
