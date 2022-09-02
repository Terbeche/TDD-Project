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

  def reverse(word)
    res = ''
    (word.length - 1).downto(0).each do |i|
      res += word[i]
    end
    puts res
    res
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end