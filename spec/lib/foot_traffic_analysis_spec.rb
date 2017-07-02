require 'rails_helper'

RSpec.describe FootTrafficAnalysis do
  context 'Methods' do
    describe '.new' do
      it 'initializes a new object with traffic log' do
        log_file = LogFile.new('../../sample_1.txt')
        foot_traffic_analysis = FootTrafficAnalysis.new(log_file)
        expect(foot_traffic_analysis).to have_attributes(logfile: log_file)
      end
    end
  end
end
