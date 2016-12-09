class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded t
    # This would be cleaner:
    #     "%02d" % [t]
    # but I don't think that's the intention of the exercise?
    (t < 10 ? "0"+t.to_s : t).to_s
  end

  def time_string
    # This would be cleaner:
    #    "%02d:%02d:%02d" % [@seconds/(60*60), (@seconds/60)%60, @seconds%60]
    # but I don't think that's the intention of the exercise?
    padded( @seconds/(60*60)) + ":" +
    padded((@seconds/60)%60)  + ":" +
    padded( @seconds%60)
  end
end
