require 'test_helper'

class ArtistControllerTest < ActionController::TestCase
  test "should get artist" do
    get :artist
    assert_response :success
  end

end
