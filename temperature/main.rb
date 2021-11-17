require './lib/temp_converter'
require './lib/except_check'
require './lib/init'

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
