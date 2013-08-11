
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

    #  values      Time series array
    #  period      A complete season's data consists of L periods. And we need
    #              to estimate the trend factor from one period to the next. To
    #              accomplish this, it is advisable to use two complete seasons;
    #              that is, 2L periods.
    #  m           Extrapolated future data points
    #              - 4 quarterly
    #              - 7 weekly
    #              - 12 monthly
  # Holt Winters forecast
  # period = number of periods covered
  def forecast(values, period = 10, m = 2, alpha = 0.5, beta = 0.5, gamma = 0.5)
    ::HoltWinters.forecast(values,alpha,beta,gamma,period,m)
  end

end
