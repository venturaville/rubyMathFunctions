#!/usr/bin/env ruby

require 'holt_winters'

class ArrayMath
  # --TODO should be converted to Vector?

  # Exponential Weighted Moving Average:
  #   values = an array of values
  #   higher values of n give greater smoothing than lower values
  def ewma(values,n=5)
    ewma = [values[0]]
    multiplier = 2 / ((1+n).to_f)
    values.each_with_index do |val,i|
      next if i == 0
      ewma << ewma[i - 1] - (multiplier * (ewma[i - 1] - val))
    end
    ewma
  end

  # (slope) differential between each 2 points
  # values = an array of values
  def derivative(values)
    diff = [0] # for sanity: set first point to 0
    (1 ... values.length).each do |i|
      diff[i] = values[i] - values[i - 1]
    end
    diff
  end

end

