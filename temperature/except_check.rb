class ExeceptChecker
  attr_accessor :temp, :scale

  def initialize(temp, scale)
    temp = temp.to_f

    @temp = temp
    @scale = scale
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
