#!/usr/bin/env ruby

require 'rubygems'
require 'arraymath'


def test2()
  am = ArrayMath.new()
  values = (0..64).to_a
  puts values.inspect
  ewma_vals = am.ewma(values,5)
  puts ewma_vals.inspect
  diff_vals = am.derivative(ewma_vals)
  puts diff_vals.inspect

  forecast_vals = am.forecast(values)
  puts forecast_vals.inspect
end

def test()
  am = ArrayMath.new()
  values = [1,3,5,7,9,11,13,15,17,19,17,13,16,3,7,1,2,3,3,6,7,4]
  puts values.inspect
  ewma_vals = am.ewma(values,5)
  puts ewma_vals.inspect
  diff_vals = am.derivative(ewma_vals)
  puts diff_vals.inspect
end

test()
test2()
