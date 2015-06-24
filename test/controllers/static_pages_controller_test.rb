require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  @@static_title_string = " | Ruby on Rails Tutorial Sample App"

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home"+@@static_title_string
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help"+@@static_title_string
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About"+@@static_title_string
  end
end
