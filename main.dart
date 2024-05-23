import 'dart:io';
import 'dart:math';

// Créez un programme qui demande à l'utilisateur d'entrer son nom et son âge. 
// Imprimez un message indiquant le nombre d'années qu'il reste à l'utilisateur pour atteindre l'âge de 100 ans.


void yearsToHundred(String name, int age) {
  int yearsToHundred = 100 - age;

  print('Salut $name, vous avez $age ans. Vous aurez 100 ans dans $yearsToHundred ans.');
}


// Demander un numéro à l'utilisateur. 
// Selon que le nombre est pair ou impair, un message approprié est imprimé à l'intention de l'utilisateur.

void evenOrOdd(int number) {
  if(number % 2 == 0){
    print("$number est pair");
  } else {
    print("$number est impair");
  }
}

// Prenons une liste et écrivez un programme qui imprime tous les éléments de la liste qui sont inférieurs à 5.

void lessThanFive() {
  List<int>  numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 4, 100, 2, 1, 4, 88, 4];
  List<int> numbersLessThanFive = [];
  for (int i = 0; i < numbers.length; i++){
    int number = numbers[i];
    if(number < 5){
      numbersLessThanFive.add(number);
    }
  }
  print(numbersLessThanFive);
}

// Créez un programme qui demande à l'utilisateur un nombre et qui imprime ensuite une liste de tous les diviseurs de ce nombre.
// Si vous ne savez pas ce qu'est un diviseur, il s'agit d'un nombre qui se divise également par un autre nombre. 
// Par exemple, 13 est un diviseur de 26 car 26 / 13 n'a pas de reste.

void allDivisors(int number) {
  List<int> divisors = [];
  for(int i = 1; i <= number; i++){
    int divisor = number % i;
    if(divisor == 0){
      divisors.add(i);
    }
  }
  print("Les diviseurs de $number sont : $divisors");
}

// Prenons deux listes et écrivez un programme qui renvoie une liste ne contenant que les éléments communs (sans doublons). 
// Assurez-vous que votre programme fonctionne sur deux listes de tailles différentes.
void commonElementBetween() {
  List<int> a = [1, 1, 2, 2, 2, 2, 3, 5, 8, 13, 21, 34, 55, 89, 4000];
  List<int> b = [1, 2, 3, 5, 8, 9, 10, 11, 12, 13, 4000];
  List<int> commonElementBetweenAandB = [];

  for (int i = 0; i < a.length; i++){
    if(b.contains(a[i]) && !commonElementBetweenAandB.contains(a[i])){
      commonElementBetweenAandB.add(a[i]);
    }
  }
  print("Les éléments commun entre a et b sont : $commonElementBetweenAandB");
}

// Demander à l'utilisateur une chaîne de caractères et lui indiquer si cette chaîne est un palindrome ou non.
// Un palindrome est une chaîne de caractères qui se lit de la même manière à l'endroit et à l'envers.

void isPalindrome(String word) {

  List<String> wordToListReverse = [];
  for(int i = word.length-1; i >= 0; i--){
    wordToListReverse.add(word[i]);
  }

  String reverseWord = "";

  for(int i = 0;i < wordToListReverse.length; i++) {
    reverseWord += wordToListReverse[i];
  } 


  if(word == reverseWord){
    print("$word à l'envers c'est $reverseWord, donc c'est un palindrome.");
  } else {
    print("$word à l'envers c'est $reverseWord, donc ce n'est pas un palindrome.");
  }
}

// Supposons que l'on vous donne une liste enregistrée dans une variable :
// Ecrivez un code Dart qui prend cette liste et crée une nouvelle liste qui ne contient que les éléments pairs de cette liste.

evenValueOfAList() {
  List<int> value = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evenValue = [];

  for(int i = 0; i < value.length; i++) {
    if (value[i] % 2 == 0){
      evenValue.add(value[i]);
    }
  }

  print(evenValue);
}

// Créer une fonction pour convertir les degrés celsius en Farheneight
void temperatureConverter(String type, double degree) {
  if(type == "Fahrenheit" || type == "fahrenheit"){
    double celsiusDegree = (degree - 32) * 5 / 9;
    print("$degree°F, ça fait $celsiusDegree°C"); 
  }else if(type == "celsius") {
    double fahrenheitDegree = degree * 9 / 5 + 32;
    print("$degree°C, ça fait $fahrenheitDegree°C"); 
  }
}

//Créer un if else if else pour déterminer la boisson selon l'âge
void ageAppropriateDrinks(int age){
  if(age>=0 && age <= 4){
    print("Vous avez $age ans. Tu peux avoir un biberon");
  } else if (age > 4 && age <=10) {
    print("Vous avez $age ans. Tu peux avoir un jus d'orange");
  } else if (age > 10 && age <=17) {
    print("Vous avez $age ans. Tu peux avoir un coca");
  } else if (age > 17 && age <=30) {
    print("Vous avez $age ans. Tu peux avoir une bière");
  } else if (age > 30 && age <=120) {
    print("Vous avez $age ans. Tu peux avoir un whisky");
  } else {
    print("Tu as $age ans. Tu est mort ou tu n'existe pas. Tu ne peux pas boire");
  }
}

//Créer une Map String, bool avec une liste de garçons et filles. Faire un print uniquement pour les filles.

void isGirls(){
    Map<String, bool> boysAndGirlsList = {
    "Emma": true,
    "John": false,
    "Sophia": true,
    "Michael": false,
    "Olivia": true,
    "William": false,
    "Ava": true,
    "James": false,
    "Isabella": true,
  };

  boysAndGirlsList.forEach((key, value) {
    if(value == true){
      print(key);
    }
  });
}

// Générer un nombre aléatoire entre 1 et 100. Demandez à l'utilisateur de deviner le nombre,
// puis dites-lui s'il a deviné trop bas, trop haut ou exactement juste
// Notez le nombre de suppositions faites par l'utilisateur et, à la fin du jeu, imprimez-le.

// void guessRandomNumber() {

//   bool isGuessed = false;
//   var rng = new Random();
//   int numberToGuess = 1 + rng.nextInt(100);
//   List<int> numberInput = [];
//   int numberOfTurns = 0;

//   while (isGuessed != true) {
//     print("Rappel des numéro déja entré: $numberInput");
//     stdout.write('Entrez un nombre entre 1 et 100: ');
//     String? input = stdin.readLineSync();

//     if (input != null) {
//       int userNumber = int.tryParse(input) ?? 0;
//         if (userNumber < numberToGuess && userNumber > 1) {
//           print("Le nombre à deviner est plus GRAND que $userNumber");
//           numberOfTurns += 1;
//           numberInput.add(userNumber);
//         } else if (userNumber > numberToGuess && userNumber < 100) {
//           print("Le nombre à deviner est plus PETIT que $userNumber");
//           numberOfTurns += 1;
//           numberInput.add(userNumber);
//         } else if (userNumber == numberToGuess) {
//           numberOfTurns +=1;
//           print("Bravo ! Le nombre à devinez est bien $numberToGuess. Vous l'avez deviné au bout de $numberOfTurns tours");
//           isGuessed = true;
//         } else if (userNumber > 100 ||userNumber < 1) {
//           print("Vous devez rentrez un nombre entre 1 et 100");
//         }
//     }
//   }

// }




main() {
  // print(" ");
  // print("----------Exercice 1----------");
  // print(" ");
  // yearsToHundred("Maxime", 26);
  // print(" ");
  // print("----------Exercice 2----------");
  // print(" ");
  // evenOrOdd(24);
  // evenOrOdd(55);
  // print(" ");
  // print("----------Exercice 3----------");
  // print(" ");
  // lessThanFive();
  // print(" ");
  // print("----------Exercice 4----------");
  // print(" ");
  // allDivisors(24);
  // allDivisors(55);
  // allDivisors(23564);
  // print(" ");
  // print("----------Exercice 5----------");
  // print(" ");
  // commonElementBetween();
  // print(" ");
  // print("----------Exercice 6----------");
  // print(" ");
  // isPalindrome("dart");
  // isPalindrome("kayak");
  // print(" ");
  // print("----------Exercice 7----------");
  // print(" ");
  // evenValueOfAList();
  // print(" ");
  // print("----------Exercice 8----------");
  // print(" ");
  // temperatureConverter("fahrenheit", 50);
  // temperatureConverter("celsius", 10);
  // print(" ");
  // print("----------Exercice 9----------");
  // print(" ");
  // ageAppropriateDrinks(3);
  // ageAppropriateDrinks(7);
  // ageAppropriateDrinks(14);
  // ageAppropriateDrinks(25);
  // ageAppropriateDrinks(53);
  // ageAppropriateDrinks(-250);
  // print(" ");
  // print("----------Exercice 10----------");
  // print(" ");
  // isGirls();
  // print(" ");
  // print("----------Exercice 11----------");
  // print(" ");
  // guessRandomNumber();
  // print(" ");
}