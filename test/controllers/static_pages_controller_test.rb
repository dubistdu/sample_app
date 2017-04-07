require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  # line 29 different from the rest since I am testing along with site_layout_test.rb for Contact part

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end
