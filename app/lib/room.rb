# this class represents the  room visited
class Room
  attr_accessor :visits

  def initialize(visits)
    @visits = visits
  end

  def print_info
    report = "Room #{room_id}, #{average_time} minute average visit,"
    report += " #{total_visitors} visitor(s) total"
    report
  end

  private

  def room_id
    visits.first.room
  end

  def average_time
    (total_time / total_visitors).to_i
  end

  def total_time
    in_time = 0
    out_time = 0
    visits.each do |visit|
      in_time += visit.time if visit.status == 'I'
      out_time += visit.time if visit.status == 'O'
    end
    (out_time - in_time).to_i
  end

  def total_visitors
    visits.group_by(&:visitor).count.to_i
  end
end
