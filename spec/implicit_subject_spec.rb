RSpec.describe Hash do
  # let(:subject) {{}}
  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:new_key] = 'Some value'

    expect(subject.length).to eq(1)
  end
  it 'is completely isolated' do

    expect(subject.length).to eq(0)
  end
end
