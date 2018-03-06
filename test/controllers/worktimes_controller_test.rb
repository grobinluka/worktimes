require 'test_helper'

class WorktimesControllerTest < ActionController::TestCase
  setup do
    @worktime = worktimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worktimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worktime" do
    assert_difference('Worktime.count') do
      post :create, worktime: { datum: @worktime.datum, odhod: @worktime.odhod, odhod_r: @worktime.odhod_r, opombe: @worktime.opombe, prihod: @worktime.prihod, prihod_r: @worktime.prihod_r, razlog_odhoda: @worktime.razlog_odhoda, ure: @worktime.ure }
    end

    assert_redirected_to worktime_path(assigns(:worktime))
  end

  test "should show worktime" do
    get :show, id: @worktime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worktime
    assert_response :success
  end

  test "should update worktime" do
    patch :update, id: @worktime, worktime: { datum: @worktime.datum, odhod: @worktime.odhod, odhod_r: @worktime.odhod_r, opombe: @worktime.opombe, prihod: @worktime.prihod, prihod_r: @worktime.prihod_r, razlog_odhoda: @worktime.razlog_odhoda, ure: @worktime.ure }
    assert_redirected_to worktime_path(assigns(:worktime))
  end

  test "should destroy worktime" do
    assert_difference('Worktime.count', -1) do
      delete :destroy, id: @worktime
    end

    assert_redirected_to worktimes_path
  end
end
