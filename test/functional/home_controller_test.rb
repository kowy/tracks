require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class HomeControllerTest < ActionController::TestCase

  def setup
  end

  ############################
  # tests for index page
  ############################
    
  def test_get_index_when_not_logged_in
    get :index
    assert_response :success
  end
end
