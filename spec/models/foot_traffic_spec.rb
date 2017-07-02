require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.describe FootTraffic, type: :model do
  include CarrierWave::Test::Matchers

  let(:foot_traffic) { FootTraffic.new }
  let(:uploader) { LogUploader.new(foot_traffic, :log) }

  before do
    LogUploader.enable_processing = true
    File.open('sample_1.txt') { |f| uploader.store!(f) }
  end

  after do
    LogUploader.enable_processing = false
    uploader.remove!
  end

  context 'Methods' do
    describe '#generate_traffic_report' do
      it 'generates the art gallery traffic report' do
        report = foot_traffic.generate_traffic_report(foot_traffic,
                                                      uploader)
        result = 'Room 0, 20 minute average visit, 2 visitor(s) total. '
        expect(report).to eq(result)
      end
    end
  end
end
