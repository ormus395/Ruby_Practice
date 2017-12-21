class CardGame
 RANKS = %w[1 2 3 4 5 6 7 8 9 T J Q K A]
 SUITS = %w[H S C D]
  @@deck = []
  @@players = {
    :player1 => [],
    :player2 => [],
    :player3 => [],
    :player4 => [],
  }
  def make_deck 
    RANKS.each do |rank|
      SUITS.each do |suit|
        @@deck << ({'rank' => rank, 'suit' => suit})
      end
    end
  end
  def get_deck
    puts @@deck
  end
  def deal
    @@deck.shuffle!
      for i in 1..7
        @@players[:player1].push(@@deck.pop)
        @@players[:player2].push(@@deck.pop)
        @@players[:player3].push(@@deck.pop)
        @@players[:player4].push(@@deck.pop)
      end
    puts @@players
  end
end

CardDealer = CardGame.new

CardDealer.make_deck

CardDealer.deal