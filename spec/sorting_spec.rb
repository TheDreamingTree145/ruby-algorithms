require_relative './spec_helper.rb'
describe '#merge_sort' do 
  
  it 'sorts an array' do
    unsorted = Array.new(100) {rand(1..100)}
    unsorted_dup = unsorted.dup
    expect(merge_sort(unsorted)).to eq(unsorted.sort)
    expect(unsorted).to eq(unsorted_dup)
  end
  
  it 'sorts an array of strings' do 
    unsorted = ["Tommy", "Tonya", "Cain", "Abel", "Tom Cruise", "Ashley Tisdale", "Ryan"]
    unsorted_dup = unsorted.dup
    expect(merge_sort(unsorted)).to eq(["Abel", "Ashley Tisdale", "Cain", "Ryan", "Tom Cruise", "Tommy", "Tonya"])
    expect(unsorted).to eq(unsorted_dup)
  end
end

describe '#insertion_sort' do 
  it 'sorts an array' do 
    unsorted = Array.new(100) {rand(1..100)}
    unsorted_dup = unsorted.dup
    expect(insertion_sort(unsorted)).to eq(unsorted.sort)
    expect(unsorted).to eq(unsorted_dup)
  end
  
  it 'sorts an array of strings' do
     unsorted = ["Tommy", "Tonya", "Cain", "Abel", "Tom Cruise", "Ashley Tisdale", "Ryan"]
    unsorted_dup = unsorted.dup
    expect(insertion_sort(unsorted)).to eq(["Abel", "Ashley Tisdale", "Cain", "Ryan", "Tom Cruise", "Tommy", "Tonya"])
    expect(unsorted).to eq(unsorted_dup)
  end
end