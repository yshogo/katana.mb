require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_articles_path
    assert_response :success
  end

  test "should get edit" do
    get edit_path
    assert_response :success
  end

end
