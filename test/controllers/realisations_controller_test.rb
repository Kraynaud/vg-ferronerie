require 'test_helper'

class RealisationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get realisations_show_url
    assert_response :success
  end

end
