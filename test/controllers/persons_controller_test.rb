require 'test_helper'

class PersonsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get persons_profile_url
    assert_response :success
  end

end
