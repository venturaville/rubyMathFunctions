#!/usr/bin/env ruby

require 'rubygems'
require 'arraymath'

class Testing
  def initialize
    @values = (0..64).to_a
    @am = ArrayMath.new()
    puts "Values:",@values.inspect
  end

  def test_ewma()
    puts "EWMA:",@am.ewma(@values,5).inspect
  end

  def test_derivative()
    puts "Derivative:",@am.derivative(@values).inspect
  end

  def test_forecast()
    puts "Forecast:",@am.forecast(@values).inspect
  end

  def test_stddev()
    puts "Stddev:",@am.stddev(@values,5).inspect
  end

  def test_scale()
    puts "Scale:",@am.scale(@values,3).inspect
  end

  def test_offset()
    puts "Offset:",@am.offset(@values,3).inspect
  end

  def test_integral()
    puts "Integral:",@am.integral(@values).inspect
  end
end

t = Testing.new()

t.test_ewma()
t.test_derivative()
t.test_forecast()
t.test_stddev()
t.test_scale()
t.test_offset()
t.test_integral()

