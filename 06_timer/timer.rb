class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    secs = @seconds % 60
    mins = @seconds / 60
    hrs = mins / 60
    mins -= (hrs * 60)

    "#{padded(hrs)}:#{padded(mins)}:#{padded(secs)}"
  end

  def padded(num)
    if num.to_s.length < 2
      '0' + num.to_s
    else
      num.to_s
    end
  end
end
