class ExeceptChecker
  attr_accessor :temp, :scale

  def initialize(temp, scale, scale1)
    temp = temp.to_f

    @temp = temp
    @scale = scale
    @scale = scale1
  end

  def check_number?(temp)
    return false unless temp[/^?[0-9]+$/]

    true
  end

  def check_scale?(scale)
    return false unless scale[/^[CcFfKk]$/]

    true
  end
end
