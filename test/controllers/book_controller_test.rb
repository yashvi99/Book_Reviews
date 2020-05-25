require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get book_name_url
    assert_response :success
  end

  test "should get author" do
    get book_author_url
    assert_response :success
  end

end
