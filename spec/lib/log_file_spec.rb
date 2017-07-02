require 'rails_helper'

RSpec.describe Visit do
  describe '.new' do
    it 'initializes a new object with log' do
      log_file = LogFile.new('../../sample_1.txt')
      expect(log_file).to have_attributes(file: log_file.file)
    end
  end

  describe '#read_lines' do
    it 'gives an array returning all lines of log' do
      log_file = LogFile.new('sample_1.txt')
      lines = log_file.read_lines
      expect(['4', '0 0 I 540', '1 0 I 540', '0 0 O 560', '1 0 O 560']).to eq(lines)
    end
  end

  describe '#read_file' do
    it 'reads the entire log' do
      log_file = LogFile.new('sample_1.txt')
      entire_log = log_file.send(:read_file)
      expect("4\n0 0 I 540\n1 0 I 540\n0 0 O 560\n1 0 O 560").to eq(entire_log)
    end
  end
end
