require_relative 'card_deck'

class Hand
  attr_accessor :hand

  def initialize
    @hand = []
  end

  def output
    @hand.each do |card|
      card.output_card
    end
  end

  def get_hand_from_user
    suit_map = {"c" => "♣", "d" => "♦", "h" => "♥", "s" => "♠"}
    5.times do |index|
      puts "Card #{index + 1}:"
      puts "Enter card rank:"
      rank = gets.chomp
      puts "Enter Suit (c,d,h,s):"
      suit = gets.chomp
      @hand << Card.new(rank.to_i, suit)
      @hand[index].suit = suit_map[@hand[index].suit] || @hand[index].suit
    end
  end

  def get_random_hand(deck)
    5.times do
      @hand << deck.deal
    end
  end

end

current_hand = Hand.new
current_hand.get_hand_from_user
puts ""
current_hand.output

