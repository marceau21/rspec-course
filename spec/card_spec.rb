class Card

  attr_accessor :type, :rank

  def initialize(rank, type )
    @type = type
    @rank = rank
  end

end

RSpec.describe Card do
  # before do
  #   @card = Card.new('Ace', 'Spades')
  # end

  # def card
  #   Card.new('Ace', 'Spades')
  # end

  let(:card) { Card.new('Ace', 'Spades')}

  it 'has a type' do
    expect(card.type).to eq('Spades')
  end

  it 'has a rank and it can be changed' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

end
