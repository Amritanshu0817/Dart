import 'dart:ffi';

void main(List<String> args) {
  // THE MOST SIMPLE WAY TO ADD STRINGS
  String makeFullName(String firstName, String lastName) {
    return "$firstName $lastName";
  }

// "=>" IS RETURN IN DART AND HERE IT IS USED
  String makeFullNamePro(String firstName, String lastName) =>
      "$firstName $lastName";

// IN THIS METHOD WE CAN REARRANGE THE SEQUENCES OF ARGUMENTS DURING THE CALLING OF THE FUNCTIONS JUST BY PLACING THE ARGUMENTS INSIDE "{}"
// "?" REPRESENTS THAT IT CAN'T BE NULL
  String makeFullNameArgs({String? firstName, String? lastName}) =>
      "$firstName $lastName";

// IF WE HAVE TO SET SOME DEFAULT VALUE FOR NON ENTERED ARGUMENTS THEN THIS METHOD IS USED
  String makeFullNameArgsDefault(String firstName,
          {String? middleName, String? lastName = 'Jio'}) =>
      "$firstName $middleName $lastName";

  void namePrice() {
    int i;
    String S = "Panner Butter Masala | 300.5";
    String name = "";
    for (i = 1; i < S.length; i++) {
      if (S[i] == '|')
        break;
      else
        name += S[i - 1];
    }
    i++;
    String price = "";

    for (; i < S.length; i++) {
      price += S[i];
    }

    double amount = double.parse(price);
    double finalPrice = amount * 0.75;
    int Final = finalPrice.toInt();
    print('$name is of price $amount and the its discounted price is $Final');
  }

  namePrice();
  print(makeFullName("Amritanshu", "Shekhar"));
  print(makeFullNameArgs(lastName: "Saini", firstName: "Harsh"));
  print(makeFullNameArgsDefault("Shivesh", middleName: "Dutt"));
//DEFAULT VALUE WILL BE PRINTED
  print(makeFullNameArgsDefault("Shivesh",
      middleName: "Dutt", lastName: "Sharma"));
//ARGUMENTED VALUE WILL BE PRINTED
}
