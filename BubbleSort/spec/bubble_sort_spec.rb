require_relative '../lib/bubble_sort'
require 'rspec'
require 'simplecov'

SimpleCov.start

describe '.bubble_sort' do
  context 'when get positive integers' do
    array = [1, 2, 16, 3, 8]
    it { expect(bubble_sort(array)).eql? ([1, 2, 3, 8, 16]) }
  end
  context 'when get negative integers' do
    array = [-1, -2, -16, -3, -8]
    it { expect(bubble_sort(array)).eql? ([-16, -8, -3, -2, -1]) }
  end
  context 'when get positive floats' do
    array = [1.1, 2.2, 1.0, 2.5, 1.05]
    it { expect(bubble_sort(array)).eql? ([1.0, 1.05, 1.1, 2.2, 2.5]) }
  end
  context 'when get negative floats' do
    array = [-1.1, -2.2, -1.0, -2.5, -1.05]
    it { expect(bubble_sort(array)).eql? ([-2.5, -2.2, -1.1, -1.05, -1.0]) }
  end
  context 'when get same numbers' do
    before = [3, 3, 3, 3, 3, 3]
    after = before
    it { expect(bubble_sort(after)).eql? before }
    before = [1, 2, 3, 4, 5, 6, 7, 8]
    after = before
    it { expect(bubble_sort(after)).eql? before }
  end
  context 'after sort' do
    array = [8, 7, 5, 5, 1, 0, 9]
    array = bubble_sort(array)
    it { expect(array[0]).eql? 0 and expect(array[6]).eql? 9 }
  end
end