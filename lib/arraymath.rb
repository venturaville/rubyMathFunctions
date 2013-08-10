#!/usr/bin/env ruby

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
  def differential(values)
    diff = [0] # for sanity: set first point to 0
    (1 ... values.length).each do |i|
      diff[i] = values[i] - values[i - 1]
    end
    diff
  end

end

am = ArrayMath.new()
values = [1,3,5,7,9,11,13,15,17,19,17,13,16,3,7,1,2,3,3,6,7,4]
puts values.inspect
ewma_vals = am.ewma(values,5)
puts ewma_vals.inspect
diff_vals = am.differential(ewma_vals)
puts diff_vals.inspect
