require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Instagram App"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
  assert_select "title", "#{@base_title}"
  end

  test "should get terms" do
    get terms_path
    assert_response :success
    assert_select "title", "利用規約 | #{@base_title}"
  end
end
