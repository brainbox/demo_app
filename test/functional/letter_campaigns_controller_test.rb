require 'test_helper'

class LetterCampaignsControllerTest < ActionController::TestCase
  setup do
    @letter_campaign = letter_campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:letter_campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create letter_campaign" do
    assert_difference('LetterCampaign.count') do
      post :create, :letter_campaign => @letter_campaign.attributes
    end

    assert_redirected_to letter_campaign_path(assigns(:letter_campaign))
  end

  test "should show letter_campaign" do
    get :show, :id => @letter_campaign.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @letter_campaign.to_param
    assert_response :success
  end

  test "should update letter_campaign" do
    put :update, :id => @letter_campaign.to_param, :letter_campaign => @letter_campaign.attributes
    assert_redirected_to letter_campaign_path(assigns(:letter_campaign))
  end

  test "should destroy letter_campaign" do
    assert_difference('LetterCampaign.count', -1) do
      delete :destroy, :id => @letter_campaign.to_param
    end

    assert_redirected_to letter_campaigns_path
  end
end
