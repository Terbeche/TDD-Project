require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#factorial' do
    it 'it raise an error when argument is negative' do
      expect(@solver.factorial(-5)).to eq 'This is not a positive number'
    end

    it 'it gives the right factorial' do
      expect(@solver.factorial(0)).to eq 1
    end
    it 'it gives the right factorial' do
      expect(@solver.factorial(5)).to eq 120
    end
  end

  describe '#reverse' do
    it 'it reverses the string' do
      expect(@solver.reverse('hello')).to eq 'olleh'
      expect(@solver.reverse('moon')).to eq 'noom'
      expect(@solver.reverse('call911')).to eq '119llac'
    end
  end

  describe '#fizzbuzz' do
    it 'it reuturns fizz when N is divisible by 3' do
      expect(@solver.fizzbuzz(21)).to eq 'fizz'
    end
    it 'it reuturns bizz when N is divisible by 5' do
      expect(@solver.fizzbuzz(55)).to eq 'buzz'
    end
    it 'it reuturns fizzuzz When N is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(30)).to eq 'fizzbuzz'
    end
    it 'it returns the same number when is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq '7'
    end
  end
end
