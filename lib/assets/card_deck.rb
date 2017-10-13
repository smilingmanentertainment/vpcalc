class Card
  attr_accessor :rank, :suit, :card_name, :keep_card

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @keep_card = false
  end

  def output_card
    card_name = {1 => "A",11 => "J", 12 => "Q", 13 => "K"}
    print "#{card_name[self.rank] || rank}#{self.suit}"
    print ":  HOLD" if @keep_card
    puts ""
  end

end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ranks = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    suits = ["♣", "♦", "♥", "♠"]

    ranks.each do |rank|
       suits.each do |suit|
          @cards << Card.new(rank, suit) 
       end
    end
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.first
    @cards.shift
  end

end
