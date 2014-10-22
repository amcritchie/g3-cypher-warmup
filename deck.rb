class Deck

  def initialize
  end

  def create_deck
    deck = []
    (1..52).each do |number|
      if number <= 13
        suit = "Clubs"
        card = number
      elsif number <= 26
        suit = "Diamons"
        card = number - 13
      elsif number <= 39
        suit = "Hearts"
        card = number - 26
      elsif number <= 52
        suit = "Spades"
        card = number - 39
      end
      if (number % 13 == 0)
        card = "K"
      elsif ((number + 1) % 13 == 0)
        card = "Q"
      elsif ((number + 2) % 13 == 0)
        card = "J"
      elsif ((number + 12) % 13 == 0)
        card = "A"
      end
      deck.push({number_value: number, card_value: card.to_s, suit: suit})
    end
    deck.push({number_value: 53, card_value: "A", suit: "Joker"})
    deck.push({number_value: 54, card_value: "B", suit: "Joker"})
    deck
  end

  def shuffle

  end


end