class Card {
  //define properties of cards
  String suit;
  String rank;

  //constructor and to set the value
  Card(this.suit, this.rank);

  toString() {
    return '$rank of $suit';
  }
}
