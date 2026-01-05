class Drink {
  String name;
  final double _price;
  String size;

  Drink(this.name, this._price, this.size);

  double get price => _price;

  void display() {
    print("$name ($size) - \$${_price.toStringAsFixed(2)}");
  }
}

class Order {
  List<Drink> drinks = [];

  void addDrink(Drink drink) {
    drinks.add(drink);
    print("${drink.name} added to order.");
  }

  void removeDrink(Drink drink) {
    drinks.remove(drink);
    print("${drink.name} removed from order.");
  }

  void showOrder() {
    print("\n--- Order Summary ---");
    double total = 0;
    for (var drink in drinks) {
      drink.display();
      total += drink.price;
    }
    print("Total: \$${total.toStringAsFixed(2)}");
    print("-------------------\n");
  }
}

void main() {
  Drink latte = Drink("Latte", 4.5, "Medium");
  Drink espresso = Drink("Espresso", 3.0, "Small");
  Drink cappuccino = Drink("Cappuccino", 5.0, "Large");

  Order myOrder = Order();
  myOrder.addDrink(latte);
  myOrder.addDrink(espresso);
  myOrder.showOrder();

  myOrder.removeDrink(espresso);
  myOrder.addDrink(cappuccino);
  myOrder.showOrder();
}
