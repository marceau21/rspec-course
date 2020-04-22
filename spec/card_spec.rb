class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

end

RSpec.describe Card do
let(:card) {Card.new('Ace', 'spades')}

  # def card
  #   Card.new('Ace', 'spades')
  # end

  # before do
  #   @card = Card.new('Ace', 'spades')
  # end # need @card in it

  it 'Has a rank and that rank can change' do
    expect(card.rank).to eq("Ace")
    card.rank = "Queen"
    expect(card.rank).to eq("Queen")
  end
  it 'Has a suit' do
    expect(card.suit).to eq("spades")
  end
  it 'Has a custom error message' do
    comparison = 'spade'
    expect(card.suit).to eq(comparison), "I expected #{comparison} and I got #{card.suit} " #accepte un deuxième argument pour customiser le message d'erreur
  end
end
