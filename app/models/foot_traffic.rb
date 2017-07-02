# model for the gallery's foot traffic analysis
class FootTraffic < ApplicationRecord
  mount_uploader :log, LogUploader

  def traffic_analysis(log_url)
    traffic_analysis = FootTrafficAnalysis.new(LogFile.new(log_url))
    traffic_analysis.print_report
  end

  def generate_traffic_report(foot_traffic, log)
    foot_traffic.log = log
    foot_traffic.save
    traffic_analysis(foot_traffic.log.current_path)
  end
end
