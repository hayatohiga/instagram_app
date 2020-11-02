require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "Instagram App"
    assert_equal full_title("Home"), "Home | Instagram App"
  end
end