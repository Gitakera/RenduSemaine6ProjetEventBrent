require 'test_helper'

class InscriptionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get inscription_new_url
    assert_response :success
  end

  test "should get create" do
    get inscription_create_url
    assert_response :success
  end

end
