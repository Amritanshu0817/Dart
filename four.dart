void main(List<String> args) {
  List<String> list = [
    "Pasta  |  85",
    "Red Velvet  |  600",
    "Pizza  |  199",
    "Noodles  |  129",
    "Biryani  |  150",
    "Rice Bowl  |  60"
  ];
// Pizza is of 199 and the discounted price is ......
  List<String> finalList = list.map((e) {
    String name = e.split(" | ")[0].trim();
    double price = double.parse(e.split(" | ")[1].trim());
    double discountedPrice = 0.8 * price;
    return ("$name is of food price $price and the discounted price is $discountedPrice \n");
  }).toList();
  print(finalList);
}
