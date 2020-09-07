RSpec.shared_context 'first shared context' do
  before do
    @foods = []
  end

  def some_helper
    5
  end

  let(:variable) {[1,2,3,4,5]}
end

RSpec.describe 'my_first_example' do
  include_context 'first shared context'

  it 'can use outside instance variable' do
    expect(@foods.length).to eq(0)
    @foods << 'macdo'
    expect(@foods.length).to eq(1)
  end

  it 'can reuse instance variable' do
    expect(@foods.length).to eq(0)
  end

  it 'can use outside helpers' do
    expect(some_helper).to eq(5)
  end
end

RSpec.describe 'second_example' do
  include_context 'first shared context'

  it ' can use shared let variables' do
    expect(variable).to eq([1,2,3,4,5])
  end
end
