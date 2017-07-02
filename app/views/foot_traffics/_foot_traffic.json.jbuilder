json.extract! foot_traffic, :id, :room_id, :average_visit,
              :num_of_visitors, :created_at,
              :updated_at
json.url foot_traffic_url(foot_traffic, format: :json)
