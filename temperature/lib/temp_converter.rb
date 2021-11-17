class Converter
  attr_accessor :temp, :scale

  def initialize(temp, scale)
    temp = temp.to_f

    @temp = temp
    @scale = scale
  end

  def convert_c
    @temp += 273.15 if @scale[/^[Kk]$/]
    @temp = (9 * @temp / 5) + 32 if @scale[/^[Ff]$/]
    @temp = @temp.round(2)
  end

  def convert_f
    @temp = 5 * (@temp - 32) / 9 if @scale[/^[Cc]$/]
    @temp = (5 * (@temp - 32) / 9) + 273.15 if @scale[/^[Kk]$/]
    @temp = @temp.round(2)
  end

  def convert_k
    @temp -= 273.15 if @scale[/^[Cc]$/]
    @temp = (9 * (@temp - 273.15) / 5) + 32 if @scale[/^[Ff]$/]
    @temp = @temp.round(2)
  end
end
