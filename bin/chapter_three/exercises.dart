// Lists:

void main() {
  getFruits();
  numbers();
  someStrings();
  countWord();
  names();
  scores();
  mapp();
}

// 1. Create a list of 5 strings and print the third element.
void getFruits() {
  var fruits = ['banana', 'apple', 'watermelon', 'grapes', 'mango'];
  print("This is for 1st exercise: ${fruits[2]}");

// 2. Add 3 more elements to the list and print the entire list.

  fruits.addAll(["pineapple", "strawberry", "peach"]);
  print("This is for 2nd exercise: Now i added 3 more elements $fruits");

  // 3. Remove the first element from the list and print the remaining elements.

  fruits.remove('banana');
  print("This is for 3rd exercise: $fruits");

// 4. Sort the list in ascending order and print the result.

  fruits.sort();
  print("This is for 4th exercise: $fruits");

// 5. Search for a specific element in the list and return its index.

  var searchFruit = 'grapes';
  var index = fruits.indexOf(searchFruit);

  if (index != -1) {
    print("This is for 5th exercise: $searchFruit is found at index $index");
  } else {
    print("This is for 5th exercise: $searchFruit not found in the list");
  }
}

// 6. Create a list of numbers from 1 to 10 and print the sum of all the elements.

void numbers() {
  var shnumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var sumArray = shnumbers.reduce((a, b) => a + b);
  print("This is for 6th exercise: $sumArray");
}

// 7. Create a list of strings and find the longest string in the list.

void someStrings() {
  var randomStrings = ['bayayi', 'akaki', 'dzmakaci'];
  var findLongest = randomStrings.reduce((a, b) => a.length > b.length ? a : b);
  print("This is for 7th exercise: $findLongest");
}

// 8. Create a list of words and count the number of occurrences of each word.

void countWord() {
  var words = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple'];

  var wordCount = <String, int>{};

  for (var word in words) {
    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }

  print("This is for 8th exercise: $wordCount");
}
// 9. Create a list of names and sort the list in alphabetical order.

void names() {
  var listOfnames = ['gio', 'luka', 'nika'];
  listOfnames.sort();
  print("This is 9th exercise: $listOfnames");
}

// 10. Create a list of scores for 5 players and find the average score.

void scores() {
  var listOfScores = [10, 5, 2];
  var sum = listOfScores.reduce((a, b) => a + b);
  var avgScore = sum / listOfScores.length;
  print("This is for 10th exercise: $avgScore");
}

// 11. Create a map with 3 key-value pairs and print one of the values.

void mapp() {
  var person = {
    'name': 'Luka',
    'age': 21,
    'city': "tbilisi",
  };
  print("This is for 11th exercise: ${person['name']}");

// 12. Add 2 more key-value pairs to the map and print the entire map.

  person.addAll({"car": "bmw", "born": "italy"});
  print("This is for 12th exercise: $person");

// 13. Remove a specific key-value pair from the map and print the remaining elements.

  person.remove("name");
  print("This is for exercise 13th: $person");

// 14. Find the length of the map and print the result.

  print("This if for exercise 14th: ${person.length}");
}

// 15. Check if a specific key exists in the map and return the result.
// 16. Create a map of prices for 5 items and find the total cost of all the items.
// 17. Create a map of countries and their capitals. Print the name of the capital for a specific country.
// 18. Create a map of employee names and their salaries. Find the average salary of all employees.
// 19. Create a map of products and their ratings. Sort the map in ascending order of ratings.
// 20. Create a map of flight routes and their distances. Find the shortest and longest routes.
