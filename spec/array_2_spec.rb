RSpec.describe Array do
  subject(:sally) do
    [1,2]
  end

  it "has two elements" do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it "has a new subject" do
    expect(sally.length).to eq(2)
  end
end
