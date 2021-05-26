require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success # this response :success is an abstract representation of the underlying http status code ( in this cases 200 OK)
    # this test says, let test the home page by issuing a get request to the static pages home URL and then making sure we receive success code in response
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"

  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"

    
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select 'title', 'contact | Ruby On Rail Tutorial Sample App'
  end

end
