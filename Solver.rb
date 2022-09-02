class Solver
  def factorial(number)
    if number.negative?
      'This is not a positive number'
    elsif number.zero?
      1
    else
      res = 1
      (1..number).each do |i|
        res *= i
      end
      res
    end
  end
end