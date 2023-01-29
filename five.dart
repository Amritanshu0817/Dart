void main(List<String> args) {
  printChefName(getChefFromDb, 3, 7);
}

void printChefName(String Function(int id) getChefFromDb, int id1, int n) {
  String name = getChefFromDb(id1);
  print("$name $n");
}

String getChefFromDb(int id) {
  switch (id) {
    case 1:
      return "Shivesh";

      break;

    case 2:
      return "Shivam";
      break;

    case 3:
      return "Saurabh";
      break;

    case 4:
      return "Amritanshu";
      break;

    default:
      return "No one is here";
  }
}
