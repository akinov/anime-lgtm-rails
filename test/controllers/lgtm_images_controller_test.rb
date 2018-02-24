require 'test_helper'

class LgtmImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lgtm_image = lgtm_images(:one)
  end

  test "should get index" do
    get lgtm_images_url
    assert_response :success
  end

  test "should get new" do
    get new_lgtm_image_url
    assert_response :success
  end

  test "should create lgtm_image" do
    assert_difference('LgtmImage.count') do
      post lgtm_images_url, params: { lgtm_image: { url: @lgtm_image.url } }
    end

    assert_redirected_to lgtm_image_url(LgtmImage.last)
  end

  test "should show lgtm_image" do
    get lgtm_image_url(@lgtm_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_lgtm_image_url(@lgtm_image)
    assert_response :success
  end

  test "should update lgtm_image" do
    patch lgtm_image_url(@lgtm_image), params: { lgtm_image: { url: @lgtm_image.url } }
    assert_redirected_to lgtm_image_url(@lgtm_image)
  end

  test "should destroy lgtm_image" do
    assert_difference('LgtmImage.count', -1) do
      delete lgtm_image_url(@lgtm_image)
    end

    assert_redirected_to lgtm_images_url
  end
end
