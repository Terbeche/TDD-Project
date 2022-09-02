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
end
