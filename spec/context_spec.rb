RSpec.describe'#even? method' do
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
  context 'with even number' do
    it 'Should return true' do
      expect(4.even?).to eq(true)
    end
  end
  context 'with odd number' do
    it 'Should return false' do
      expect(5.even?).to eq(false)
    end

  end
end
