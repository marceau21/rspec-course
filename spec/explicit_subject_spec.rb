RSpec.describe Hash do
  subject(:marcito) do
    {a: 1, b: 2}
  end

  it 'has two value-pairs' do
    expect(marcito.length).to eq(2)
    expect(subject.length).to eq(2)
  end
end
