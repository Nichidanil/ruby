require_relative 'temp_converter'
require_relative 'except_check'

puts 'Введите температуру: '
temp = gets

puts 'Введите шкалу измерения (C, K, F): '
scale = gets
scale = scale[0]

puts 'Введите шкалу, в которую необходимо перевести (C, K, F): '
scale1 = gets
scale1 = scale1[0]

except = ExeceptChecker.new(temp, scale)
abort 'Температура должна быть числом' if except.check_number?(temp) == false
abort 'Шкала может быть только C, K или F' if except.check_scale?(scale) == false
abort 'Шкала может быть только C, K или F' if except.check_scale?(scale1) == false

conv = Converter.new(temp, scale)

case scale
when 'C', 'c'
  conv.convert_c(scale1)
when 'K', 'k'
  conv.convert_k(scale1)
when 'F', 'f'
  conv.convert_f(scale1)
end

print 'Температура в градусах ', conv.temp, ' ', scale1, "\n\n"
