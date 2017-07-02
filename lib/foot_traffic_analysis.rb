require 'room.rb'
require 'visit.rb'
require 'log_file.rb'

# this class which provides the report
class FootTrafficAnalysis
  attr_accessor :logfile

  def initialize(logfile)
    @logfile = logfile
  end

  def print_report
    results = room_visit_info
    order_by_room(results)
  end

  private

  def order_by_room(results)
    report = ''
    results.keys.sort.each do |row|
      report += results[row]
    end
    report
  end

  def room_visit_info
    results = {}
    room_wise_visitors_group.each do |room_id, visit|
      results[room_id.to_i] = Room.new(visit).print_info
    end
    results
  end

  def room_wise_visitors_group
    visitors_log.group_by(&:room)
  end

  def visitors_log
    visitors = input_lines.collect do |line|
      data = line.split
      Visit.new(data[0], data[1], data[2], data[3])
    end
    visitors
  end

  def input_lines
    logfile.read_lines
  end
end
