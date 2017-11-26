require_relative '../lib/bubblesort.rb'


describe 'Bubble Sort' do

  it 'Not error'  do
    expect { bubble_sort([2,5]) }.not_to raise_error
  end
  it 'Equal' do
    expect(bubble_sort([11,16,1,0])).to eq([0,1,11,16])
  end
  it 'Not equal' do
    expect(bubble_sort([3,6,1])).not_to eq([3,1,6])
  end

end	
