require_relative './spec_helper.rb'

describe '#merge_sort' do 
  
  it 'sorts an array' do
    
    unsorted = Array.new(100) {rand(1..50)}
    expect(merge_sort(unsorted)).to eq(unsorted.sort)
  end
end

describe '#insertion_sort' do 
  it 'sorts an array' do 
    unsorted = Array.new(100) {rand(1..100)}
    expect(insertion_sort(unsorted)).to eq(unsorted.sort)
  end
end