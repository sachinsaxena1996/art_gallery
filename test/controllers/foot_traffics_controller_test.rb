require 'test_helper'

class FootTrafficsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foot_traffic = foot_traffics(:one)
  end

  test 'should get new' do
    get new_foot_traffic_url
    assert_response :success
  end

  test 'should create foot_traffic' do
    assert_difference('FootTraffic.count') do
      post foot_traffics_url,
           params: { foot_traffic:
                      { average_visit: @foot_traffic.average_visit,
                        num_of_visitors: @foot_traffic.num_of_visitors,
                        room_id: @foot_traffic.room_id } }
    end

    assert_redirected_to foot_traffic_url(FootTraffic.last)
  end

  test 'should show foot_traffic' do
    get foot_traffic_url(@foot_traffic)
    assert_response :success
  end
end
