// Question: 1
   void main() {
   List<String> names = [ “Alia”, “Laiba”, “Sheeza”, “Dua”  ];
     for (String name in names) {
       print(name);
    }
   }
/*******************************************************************************************************************/

// Question: 2

   void main() {
   List<String> days = [];

   days.add("Monday");
   days.add("Tuesday");
   days.add("Wednesday");
   days.add("Thursday");
   days.add("Friday");
   days.add("Saturday");
   days.add("Sunday");

   for (String day in days) {
     print(day);
     }
   }
/*******************************************************************************************************************/

// Question: 3

   void main() {
   List<String> days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" ];

   while (days.isNotEmpty) {
    String removedDay = days.removeLast();
    print("Removed day: $removedDay");
   }
  }

/*******************************************************************************************************************/


// Question: 4
   void main() {
   List<int> numbers = [15, 8, 21, 4, 10, 3, 17, 9];

   int smallest = numbers[0];
   int greatest = numbers[0];

   for (int number in numbers) {
     if (number < smallest) {
       smallest = number;
      }

    if (number > greatest) {
      greatest = number;
    }
   }

    print("Smallest number: $smallest");
    print("Greatest number: $greatest");
   }

/*******************************************************************************************************************/

// Question: 5
   
  void main() {
  Map<String, String> contactMap = {
    "name": "Laiba",
    "phone": "03332094210",
    "email": "laiba09@gmail.com",
    "city": "Pakistan"
  };

  List<String> keysWithLengthFour = contactMap.keys.where((key) => key.length == 4).toList();
  print("Keys with length 4:");
  for (String key in keysWithLengthFour) {
    print(key);
  }
}

/*******************************************************************************************************************/

// Question: 6

   void main() {
   Map<String, Map<String, dynamic>>? world = {
   "countries": {
      "Pakistan": {
        "capitalCity": "Islamabad",
         "currency": "PKR",
          "language": "Urdu"
      },
      "Bangladesh": {
        "capitalCity": "Dhaka",
        "currency": "Taka",
        "language": "Bangali"
      },
      "India": {
        "capitalCity": "New Dheli",
        "currency": "INR",
        "language": "Hindi"
      },
    }
  };

  String countryKey = "Pakistan";

  if (world != null && world["countries"] != null) {
    String? capitalCity = world["countries"]?[countryKey]?["capitalCity"];
    String? currency = world["countries"]?[countryKey]?["currency"];

    if (capitalCity != null && currency != null) {
      print("Country: $countryKey");
      print("Capital City: $capitalCity");
      print("Currency: $currency");
    } else {
      print("Country details not found.");
    }
  } else {
    print("World data not available.");
  }
}

/*******************************************************************************************************************/

// Question: 7

   void main() {
   Map<String, double> expenses = {
    'sun': 4200.0,
    'mon': 2100.0,
    'tue': 3234.0,
   };

   String key = 'fri';
   double value = 5000.0;
   if (expenses.containsKey(key)) {
     expenses[key] = value;
   } else {
     expenses[key] = value;
   }
   print(expenses);
   }

/*******************************************************************************************************************/

// Question: 8

   void main() {
   List<Map<String, String>> usersEligibility = [
    {'name': 'Hira', 'eligible': 'true'},
    {'name': 'Ali', 'eligible': 'false'},
    {'name': 'Mna', 'eligible': 'true'},
    {'name': 'Sarah', 'eligible': 'true'},
    {'name': 'Hamna', 'eligible': 'false'},
  ];

   usersEligibility.removeWhere((user) => user['eligible'] == 'false');
   print(usersEligibility);

/*******************************************************************************************************************/

// Question: 9

   void main() {
   List<int> numbers = [5, 8, 2, 10, 3];
   int max = findMax(numbers);
   print('The maximum value is: $max');
   }
   int findMax(List<int> numbers) {
   if (numbers.isEmpty) {
     throw Exception('The list is empty.');
   }
   int max = numbers[0];
   for (int i = 1; i < numbers.length; i++) {
     if (numbers[i] > max) {
       max = numbers[i];
     }
   }
  return max;
  }

/*******************************************************************************************************************/

// Question: 10

   void main() {
   List<String> strings = ['apple', 'banana', 'orange', 'apple', 'kiwi', 'banana'];
   List<String> uniqueStrings = removeDuplicates(strings);
   print('List without duplicates: $uniqueStrings');
   }

   List<String> removeDuplicates(List<String> strings) {
   Set<String> uniqueSet = Set<String>.from(strings);
   List<String> uniqueList = uniqueSet.toList();
   return uniqueList;
}

/*******************************************************************************************************************/

// Question: 11

   void main() {
   List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
   int n = 5;
   List<int> newList = getFirstNElements(originalList, n);
   print('New List: $newList');
   }

  List<int> getFirstNElements(List<int> list, int n) {
 if (n <= 0) {
    throw Exception('Invalid value of n. n must be greater than 0.');
  }
   return list.sublist(0, n);
 }

/*******************************************************************************************************************/

// Question: 12

  void main() {
  List<String> originalList = ['apple', 'banana', 'orange', 'kiwi'];
  List<String> reversedList = getReversedElements(originalList);
  
  print('Original List: $originalList');
  print('Reversed List: $reversedList');
  }

  List<String> getReversedElements(List<String> list) {
  List<String> reversedList = List.from(list.reversed);
  return reversedList;
  }

/*******************************************************************************************************************/

// Question: 13

   void main() {
   List<int> originalList = [1, 2, 3, 2, 4, 5, 3, 6, 7, 4];
   List<int> uniqueList = getUniqueElements(originalList);

   print('Original List: $originalList');
   print('Unique List: $uniqueList');
   }

  List<int> getUniqueElements(List<int> list) {
  Set<int> uniqueSet = Set<int>();
  List<int> uniqueList = [];
  for (int num in list) {
    if (!uniqueSet.contains(num)) {
      uniqueSet.add(num);
      uniqueList.add(num);
    }
  }
  return uniqueList;
 }

/*******************************************************************************************************************/

// Question: 14

   void main() {
   List<int> originalList = [5, 2, 9, 1, 7, 3];
   List<int> sortedList = getSortedElements(originalList);
  
   print('Original List: $originalList');
   print('Sorted List: $sortedList');
   }

  List<int> getSortedElements(List<int> list) {
  List<int> sortedList = List.from(list); 
  sortedList.sort(); 
  return sortedList;
}

/*******************************************************************************************************************/

// Question: 15

  void main() {
  List<int> originalList = [5, -2, 9, -1, 7, -3];
  List<int> positiveNumbers = getPositiveNumbers(originalList);
  
  print('Original List: $originalList');
  print('Positive Numbers: $positiveNumbers');
  }

  List<int> getPositiveNumbers(List<int> list) {
  List<int> positiveNumbers = list.where((number) => number > 0).toList();
  return positiveNumbers;
 }

/*******************************************************************************************************************/

// Question: 16

   void main() {
   List<int> originalList = [5, 2, 9, 4, 7, 3];
   List<int> evenNumbers = getEvenNumbers(originalList);
  
   print('Original List: $originalList');
   print('Even Numbers: $evenNumbers');
   }

   List<int> getEvenNumbers(List<int> list) {
   List<int> evenNumbers = list.where((number) => number % 2 == 0).toList();
   return evenNumbers;
   }

/*******************************************************************************************************************/

// Question: 17

   void main() {
   List<int> originalList = [1, 2, 3, 4, 5];
   List<int> squaredList = getSquaredList(originalList);

   print('Original List: $originalList');
   print('Squared List: $squaredList');
   }

   List<int> getSquaredList(List<int> list) {
   List<int> squaredList = list.map((number) => number * number).toList();
   return squaredList;
   }


/*******************************************************************************************************************/

// Question: 18

   void main() {
    Map<String, dynamic> person = {
     'name': 'John',
     'age': 25,
     'isStudent': true,
    };

  bool isEligible = checkEligibility(person);
  if (isEligible) {
    print('Eligible');
  } else {
    print('Not eligible');
   }
  }
  bool checkEligibility(Map<String, dynamic> person) {
  String name = person['name'];
  int age = person['age'];
  bool isStudent = person['isStudent'];
  return isStudent && age > 18;
 }

/*******************************************************************************************************************/

// Question: 19

   void main() {
   Map<String, dynamic> product = {
    'name': 'Example Product',
    'price': 9.99,
    'quantity': 5,
   };

   checkStock(product);
  }

  void checkStock(Map<String, dynamic> product) {
  String name = product['name'];
  double price = product['price'];
  int quantity = product['quantity'];

  if (quantity > 0) {
    print('$name - In stock');
  } else {
    print('$name - Out of stock');
   }
  }

/*******************************************************************************************************************/

// Question: 20

   void main() {
   Map<String, dynamic> car = {
     'brand': 'Toyota',
     'color': 'Red',
     'isSedan': true,
    };

   checkCar(car);
   }

   void checkCar(Map<String, dynamic> car) {
   String brand = car['brand'];
   String color = car['color'];
   bool isSedan = car['isSedan'];

   if (isSedan && color == 'Red') {
     print('Match');
   } else {
    print('No match');
     }
    }

/*******************************************************************************************************************/

// Question: 21

   void main() {
   Map<String, dynamic> user = {
     'name': 'Hafsa',
     'isAdmin': true,
     'isActive': true,
    };

   checkUser(user);
   }

   void checkUser(Map<String, dynamic> user) {
   String name = user['name'];
   bool isAdmin = user['isAdmin'];
   bool isActive = user['isActive'];

   if (isAdmin && isActive) {
   print('$name is an active admin');
   } else {
    print('$name is not an active admin');
    }
   }

/*******************************************************************************************************************/

// Question: 22

   void main() {
   Map<String, int> cart = {
     'Banana': 2,
     'Orange': 3,
     'Apple': 4,
     'Grapes': 1,
    };

    checkProduct(cart, 'Apple');
    }

    void checkProduct(Map<String, int> cart, String productName) {
    if (cart.containsKey(productName)) {
      print('Product found');
     } else {
     print('Product not found');
      }
     }






