# controller for generating foot  traffic report
class FootTrafficsController < ApplicationController
  before_action :set_foot_traffic, only: [:show]

  def show; end

  def new
    @foot_traffic = FootTraffic.new
  end

  def create
    @foot_traffic = FootTraffic.new
    report = @foot_traffic.generate_traffic_report(@foot_traffic,
                                                   foot_traffic_params[:log])
    report_text = "Foot Traffic Analysis Report: #{report}"
    if report.present?
      redirect_to @foot_traffic, notice: report_text
    else
      format.html { render :new }
    end
  end

  private

  def set_foot_traffic
    @foot_traffic = FootTraffic.find(params[:id])
  end

  def foot_traffic_params
    params.require(:foot_traffic)
          .permit(:room_id, :average_visit, :num_of_visitors, :log)
  end
end
