require './lib/temp_converter'
require './lib/except_check'

class Initial
  attr_accessor :temp, :scale, :scale1

  def type_temp
    puts 'Введите температуру: '
    @temp = gets.chomp
  end

  def type_scale
    puts 'Введите шкалу измерения (C, K, F): '
    @scale = gets.chomp
  end

  def type_scale1
    puts 'Введите шкалу, в которую необходимо перевести (C, K, F): '
    @scale1 = gets.chomp
  end

  def exception
    except = ExeceptChecker.new(temp, scale, scale1)
    abort 'Температура должна быть числом' if except.check_number?(temp) == false
    abort 'Шкала может быть только C, K или F' if except.check_scale?(scale) == false
    abort 'Шкала может быть только C, K или F' if except.check_scale?(scale1) == false
  end

  def convert
    @convert = Converter.new(temp, scale)
  end

  def operation
    case @scale1
    when 'C', 'c'
      convert.convert_c
    when 'K', 'k'
      convert.convert_k
    when 'F', 'f'
      convert.convert_f
    end
  end

  def print_result
    print 'Температура в градусах ', @convert.temp, ' ', @scale1, "\n\n"
  end
end
