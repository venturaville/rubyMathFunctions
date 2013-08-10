
require 'rubygems'
require 'arraymath'

am = ArrayMath.new()
values = [1,3,5,7,9,11,13,15,17,19,17,13,16,3,7,1,2,3,3,6,7,4]
puts values.inspect
ewma_vals = am.ewma(values,5)
puts ewma_vals.inspect
diff_vals = am.derivative(ewma_vals)
puts diff_vals.inspect

