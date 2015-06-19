require 'test_helper'

class JuegosControllerTest < ActionController::TestCase
  setup do
    @juego = juegos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juegos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create juego" do
    assert_difference('Juego.count') do
      post :create, juego: { nombre: @juego.nombre, rating: @juego.rating }
    end

    assert_redirected_to juego_path(assigns(:juego))
  end

  test "should show juego" do
    get :show, id: @juego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @juego
    assert_response :success
  end

  test "should update juego" do
    patch :update, id: @juego, juego: { nombre: @juego.nombre, rating: @juego.rating }
    assert_redirected_to juego_path(assigns(:juego))
  end

  test "should destroy juego" do
    assert_difference('Juego.count', -1) do
      delete :destroy, id: @juego
    end

    assert_redirected_to juegos_path
  end
end
