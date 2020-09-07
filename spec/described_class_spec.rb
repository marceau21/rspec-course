class King
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

RSpec.describe King do
  subject {described_class.new('Louis')}
  let(:marceau) {described_class.new('Marceau')}

  it 'represents a great personn' do
    expect(marceau.name).to eq('Marceau')
  end
end
