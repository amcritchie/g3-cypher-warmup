require 'awesome_print'
load 'deck.rb'


string = "Now this is a story all about how…"

remove_chars = string.gsub(/[^0-9a-z ]/i, '')

capitalize = remove_chars.upcase

no_space = capitalize.split(" ").join.split("")

def add_spaces_every_five(no_space)
  count = 0
  array = []
  string = ""
  no_space.each do |letter|
    string += letter
    count += 1
    if count == 5
      array.push string
      string = ""
      count = 0
    end
  end
  if string.length != 5
    add_x = 5 - string.length
    (1..add_x).each do |x|
      string += "X"
    end
    array.push string
  end
  array
end

deck = Deck.new
new_deck = deck.create_deck

def move_card(direction, card_index,deck)
  moving_from = card_index
  
  if (card_index + direction >= 54)
    new_index = card_index + direction - 54
  else
    new_index = card_index + direction
  end

  deck.insert(new_index, deck.delete_at(moving_from))
end

def triple_cut(card, index_of_split)

end

ddeck = move_card(1,52,new_deck)
dddeck = move_card(3,52,ddeck)
# ap split(dddeck, dddeck)



