require 'test_helper'

class TopFiveGamesControllerTest < ActionController::TestCase
  setup do
    @top_five_game = top_five_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:top_five_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create top_five_game" do
    assert_difference('TopFiveGame.count') do
      post :create, top_five_game: { fifth_game_id: @top_five_game.fifth_game_id, first_game_id: @top_five_game.first_game_id, fourth_game_id: @top_five_game.fourth_game_id, second_game_id: @top_five_game.second_game_id, third_game_id: @top_five_game.third_game_id, user_id: @top_five_game.user_id }
    end

    assert_redirected_to top_five_game_path(assigns(:top_five_game))
  end

  test "should show top_five_game" do
    get :show, id: @top_five_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @top_five_game
    assert_response :success
  end

  test "should update top_five_game" do
    put :update, id: @top_five_game, top_five_game: { fifth_game_id: @top_five_game.fifth_game_id, first_game_id: @top_five_game.first_game_id, fourth_game_id: @top_five_game.fourth_game_id, second_game_id: @top_five_game.second_game_id, third_game_id: @top_five_game.third_game_id, user_id: @top_five_game.user_id }
    assert_redirected_to top_five_game_path(assigns(:top_five_game))
  end

  test "should destroy top_five_game" do
    assert_difference('TopFiveGame.count', -1) do
      delete :destroy, id: @top_five_game
    end

    assert_redirected_to top_five_games_path
  end
end
