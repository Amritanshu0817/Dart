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
}
