require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Book online store"
  end

  test "should get new" do
    get new_path
    assert_response :success
    assert_select "title", "New | Book online store"
  end

end