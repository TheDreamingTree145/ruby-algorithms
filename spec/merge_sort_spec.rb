require_relative './spec_helper.rb'
describe '#merge_sort' do 
  
  it 'sorts an array' do
    
    unsorted = Array.new(30) {rand(1..50)}
    sorted = unsorted.sort
    expect(merge_sort(unsorted)).to eq(unsorted.sort)
  end
end