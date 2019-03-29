require 'test_helper'

class AssingmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get assingments_create_url
    assert_response :success
  end

end
