require_relative 'temp_converter'
require_relative 'except_check'
require_relative 'init'

def main
  hello = Initial.new
  hello.type_temp
  hello.type_scale
  hello.type_scale1
  hello.exception
  hello.convert
  hello.operation
  hello.print_result
end

main
