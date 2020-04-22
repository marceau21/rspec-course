RSpec.describe 'Before and after hooks' do
  before(:example) do
    puts 'Before example'
  end
  before(:context) do
    puts 'Before context'
  end
  after(:example) do
    puts 'After example'
  end
  after(:context) do
    puts 'After context'
  end
  it 'is juste a random example' do
    expect(1 + 1).to eq(2)
  end
  it 'is juste an other random example' do
    expect(1 + 1).to eq(2)
  end
end
