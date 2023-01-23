void main(List<String> args) {
  List<String> myStrList = ["Cake", "Pastry", "Pasta", "Cake"];
  myStrList.add("BUtter Masala");
  print(myStrList);
  myStrList.sort();

  print(myStrList.length);
  print(myStrList.reversed);
  print(myStrList.isEmpty);

  myStrList.remove("Cake");
  print(myStrList);

  myStrList.removeWhere((element) => (element == "Cake"));
  print(myStrList);

  myStrList.forEach((element) {
    print(element);
  });

//If we want to perform any operation on the each element of the list
//we can use the method map as it is a generic type so it can
//perform many operations regarding different datatypes

  List<String> updatedList = myStrList.map((e) => e + " Food Item").toList();
  print(updatedList);

  List<int> lengthOfElements = myStrList.map((e) => e.length).toList();
  print(lengthOfElements);

  String name = "  Amritanshu   |  Shekhar";

  List<String> splitString = name.split("|");
  List<String> sortedName = splitString.map((e) => e.trim()).toList();
  print(sortedName);
}
