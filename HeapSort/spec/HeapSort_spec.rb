require_relative '../lib/heapsort.rb'

describe HeapSort do
  describe '#heap_sort' do
    it 'should return nil [] to short empty array' do
        expect(HeapSort.new.heap_sort([])).to match([])
    end
    it 'should return sorted int array' do
        array = [5,1,9,7]
    		result = [1,5,7,9]
    		expect(HeapSort.new.heap_sort(array)).to match_array(result)
    end
    it 'should return sorted int array' do
        array = [3,1,10,5,8,7,14,6,21,15,18]
        result = [1,3,5,6,7,8,10,14,15,18,21]
        expect(HeapSort.new.heap_sort(array)).to match_array(result)
    end
    it 'should return sorted neagtive int array' do
        array = [-1,-5,-18,-9,-6,-8,-2,-4]
        result = [-18,-9,-8,-6,-5,-4,-2,-1]
        expect(HeapSort.new.heap_sort(array)).to match_array(result)
    end
    it 'should return sorted mixed int array' do
        array = [4,1,6,9,5,-1,-6,-5,-8,-9,-7]
        result = [-9,-8,-7,-6,-5,-1,1,4,5,6,9]
      expect(HeapSort.new.heap_sort(array)).to match_array(result)
    end
    it 'it should return no erros when get sorted array' do
        array = [6, 7, 8, 9, 10, 11]
        expect { HeapSort.new.heap_sort(array) }.not_to raise_error
    end
  end
end
