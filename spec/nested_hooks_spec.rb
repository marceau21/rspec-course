RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'is just a random example' do
    expect(1 + 1).to eq(2)
  end

  context 'it is a context' do

    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'is just an other random example' do
    expect(1 + 1).to eq(2)
    end

    it 'is just an other random example' do
    expect(1 + 1).to eq(2)
    end
  end
end
