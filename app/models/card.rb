class Card < ApplicationRecord
  attr_accessor :suit, :rank

  Ranks = {
    "A" =>14,
    "K" => 13,
    "Q" => 12,
    "J" => 11,
    "T" => 10
  }

  def initialize(suit, rank)
    @suit = suit
    @rank = RANKS[rank] || rank.to_i
  end

end
