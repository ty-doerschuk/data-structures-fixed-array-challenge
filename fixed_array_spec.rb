require_relative 'fixed_array'

describe FixedArray do

  let (:fixedarray) { FixedArray.new(5)}

  it 'has an initial size of 5 elements' do
    expect(fixedarray.arr.length).to eq 5
  end

  it '#set a value in the array at a specific index' do
    fixedarray.set(2, 'three')
    expect(fixedarray.arr).to eq([nil, nil, 'three', nil, nil])
  end

  it '#get a value from the array at a specific index' do
    fixedarray.set(2, 'three')
    expect(fixedarray.get(2)).to eq 'three'
  end
  
end
