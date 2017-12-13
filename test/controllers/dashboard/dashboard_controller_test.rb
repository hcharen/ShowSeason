require 'test_helper'

class Dashboard::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get dashboard_dashboard_inde_url
    assert_response :success
  end

end
