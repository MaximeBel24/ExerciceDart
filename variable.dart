// Vous travaillez sur un projet de liste de courses pour une 
// application mobile et vous devez déclarer des variables pour 
// les produits, leur quantité et leur prix.

void shoppingList(String name, int quantity, double price) {

  print("Exercice 1 : Dans ma liste de course, j'ai besoin de $quantity $name qui ont un prix de $price € le kilo");
} 

// Vous travaillez sur un projet et vous avez besoin de stocker 
// une valeur qui ne doit jamais être modifiée. Vous décidez donc 
// d'utiliser une constante en Dart. Écrivez un programme qui 
// utilise une constante pour stocker le nombre de jours dans 
// une semaine, et affichez le résultat dans un print.

void dayInAWeek() {

  const day = 7; 

  print(" Exercice 2 : Il y a $day jours dans la semaine");
}

// Dans cet exercice, vous allez déclarer différentes variables avec 
// différents types primitifs en Dart. Vous allez ensuite utiliser la 
// méthode "print" pour afficher la valeur de chacune de ces variables

void primitiveTypes() {
  String string = "chaîne de caractères";
  int entier = 4;
  double decimal = 24.94;
  bool vrai = true;
  bool faux = false;

  print("Ceci est une $string");
  print("$entier est un nombre entier");
  print("$decimal est un nombre decimal");
  print("Ce booléen est vrai : $vrai");
  print("Ce booléen est faux : $faux");
}

// Vous devrez compléter ce code pour mettre la 
// String en majuscule et la montrer dans le print().

void stringToUppercase() {
  String input = 'Salut Les Codeurs';
  String output = input.toUpperCase();
  print('La String originale: $input');
  print('La String en majuscule: $output');
}

// Vous devrez compléter ce code pour mettre la 
// String en minusucle et la montrer dans le print().

void stringToLowercase() {
  String input = 'Ne PAS Crier ICI';
  String output = input.toLowerCase(); 
  print('La String originale: $input');
  print('La String en minuscule: $output');
}

// Écrire un programme Dart avec:
// Une variable String nommée input. Vous y entrerez la String de votre choix.
// Une variable int nommée count qui compte le nombre de caractères présents dans la String précédente.
// Un print() pour donner la résponse du count dans la console.

accountIsGood(String input) {
  int count = input.length;
  print("Il y a $count caractères dans $input.");
}

// Vous devez créer un programme Dart qui permet 
// d'itérer à travers une String et d'afficher 
// chaque caractère de la String sur une nouvelle ligne.

expertToCall(String input) {
  for(int i = 0; i < input.length; i++) {
    print(input[i]);
  }
}

// Remplacez toutes les lettres "a" par un "o".
// Imprimez ensuite le résultat dans la console.

void replaceLetter(){
 
    String str = "Salut la compagnie. Comment allez vous aujourd'hui?";
    String newStr = str.replaceAll("a", "o");
    print(newStr);
}

// Vous devrez écrire un programme qui prend deux nombres 
// (num1 et num2) et effectue une série d'opérations 
// arithmétiques sur ces nombres.

void calcul(int num1, int num2){
  int sum = num1 + num2;
  int difference = num1 - num2;
  int product = num1 * num2;
  double quotient = num1 / num2;
  int remainder = num1 % num2;

  print("Addition : $sum");
  print("Soustraction : $difference");
  print("Multiplication : $product");
  print("Division : $quotient");
  print("Reste après division : $remainder");
}

// Copiez ce bout de code et convertissez 
// les types pour que les variables n'aient plus d'erreur:


void convertir() {
  int intValue = 42;
  double doubleValue = 3.14;
  String stringValue = '256';
  bool boolValue = true;
  
  // Conversion d'un entier en double
  double doubleFromInt = intValue.toDouble();
  print('intValue en double: $doubleFromInt');
  
  // Conversion d'un double en entier
  int intFromDouble = doubleValue.toInt();
  print('doubleValue en entier: $intFromDouble');
  
  // Conversion d'un booléen en chaîne de caractères
  String stringFromBool = boolValue.toString();
  print('boolValue en string: $stringFromBool');
  
  // Conversion d'une chaîne de caractères en entier
  int intFromString = int.parse(stringValue);
  print('$stringValue en entier: $intFromString');
}

// Calculez le nombre de calories brûlées par jour au repos (MB) 
// pour une femme de 35 ans, mesurant 1m65 et pesant 60 kg. 
// Ensuite, calculez ses besoins caloriques en fonction de son 
// niveau d'activité physique modérément actif. Ajoutez des 
// print pour que la console montre votre résultat.

void caloricCalculation(String sexe, int poids, int taille, int age ){

  double mb = 0;

  if(sexe == "femme" || sexe == "Femme") {
    mb = 447.6 + (9.2 * poids) + (3.1 * taille) - (4.3 * age); 
    print("Vous êtes une $sexe, vous pesez $poids kg, vous mesurez $taille cm et vous avez $age ans. Votre métabolisme de base est de $mb kcal.");
  } else if (sexe == "homme" || sexe == "Homme") {
    mb = 88.36 + (13.4 * poids) + (4.8 * taille) - (5.7 * age);
    print("Vous êtes un $sexe, vous pesez $poids kg, vous mesurez $taille cm et vous avez $age ans. Votre métabolisme de base est de $mb kcal.");
  } else {
    print("Je ne connais pas ce sexe ");
  }
  
  double sedentaire = mb * 1.2;
  double peuActif = mb * 1.375;
  double modereActif = mb * 1.55;
  double tresActif = mb * 1.725;
  double extremActif = mb * 1.9;

  print("Si vous êtes sédentaire, votre besoin calorique est de $sedentaire");
  print("Si vous êtes peu actif, votre besoin calorique est de $peuActif");
  print("Si vous êtes medérément actif, votre besoin calorique est de $modereActif");
  print("Si vous êtes très actif, votre besoin calorique est de $tresActif");
  print("Si vous êtes extrèmement actif, votre besoin calorique est de $extremActif");

}

// Ecrivez un programme en Dart qui déclare deux variables : a et b.
// Initialisez a avec la valeur 10 et b avec la valeur 5
// Utilisez ensuite les différents opérateurs d'assignation pour modifier
// la valeur de a  en utilisant b de différentes manières :
// +=
// -=
// *=
// %=
// Affichez la valeur finale de a après chaque modification.
// Vous Essaierez ensuite d'utiliser le /= et vous noterez
// une erreur. Tentez de l'expliquer

void binaryOperators(int a, int b) {

  a += b;
  print("Après ddition : $a");
  a-= b;
  print("Après soustraction : $a");
  a *= b;
  print("Après multiplication : $a");
  a %= b;
  print("Reste après division : $a");

  
  print("Après division : On ne peut pas, la division a /= b renvoie un type double (decimal) alors que la variable a est de type int (entier).");
}

// L'objectif de cet exercice est de créer un programme qui prend
//  en entrée deux nombres entiers a et b, et qui détermine si
// a est égal,
// différent,
// inférieur
// ou supérieur à b.
// Les comparaisons ne se feront qu'a partir de print().

void comparatingOperators(int a, int b) {

  if ( a == b ){
    print("a: $a est égal à b: $b");
  } else if (a != b ){
    print("a: $a est différent de b: $b");
    if (a < b ){
      print("a: $a est inférieur à b: $b");
    } else if (a > b ){
      print("a: $a est supérieur à b: $b");
    }
  }

  print("$a est égal à $b => ${a == b}");
  print("$a est différent de $b => ${a != b}");
  print("$a est inférieur à $b => ${a < b}");
  print("$a est supérieur à $b => ${a > b}");

}

// Vous êtes en train de développer un programme pour 
// une entreprise de livraison.
// Leur politique est que les livraisons ne peuvent 
// être effectuées que si la commande est :
// payée
// que l'adresse de livraison est valide.
// Votre tâche est de créer un programme qui utilise 
// l'opérateur logique && pour vérifier si ces deux 
// conditions sont remplies.

void deliveryFactory(bool isPayed, bool addressIsValid){

  if (isPayed == true && addressIsValid == true) {
    print("La commande est payée et l'adresse est valide. La livraison peut être effectuée.");
  } else if (isPayed == true && addressIsValid == false) {
    print("La commande est payée mais l'adresse n'est pas valide. La livraison ne peut pas être effectuée.");
  } else if (isPayed == false && addressIsValid == true) {
    print("La commande n'est pas payée et l'adresse est valide. La livraison ne peut pas être effectuée.");
  } else if (isPayed == false && addressIsValid == false) {
    print("La commande n'est pas payée et l'adresse n'est pas valide. La livraison ne peut pas être effectuée.");
  }
}

// Dans cet exercice, nous allons travailler avec l'opérateur ternaire 
// en Dart. Votre mission consiste à écrire une fonction qui permet de 
// vérifier si un nombre donné est pair ou impair en utilisant l'opérateur ternaire.

// La fonction devra:

// Prendre en paramètre un int

// Retourner une String. Si le nombre est pair, le retour 
// sera "Le nombre est pair" et si le nombre est impair, 
// il devra retourner "Le nombre est impair".

// Vous appelerez ensuite votre fonction au sein de plusieurs print() pour 
// tester si elle fonctionne bien.

String ternaryOperator(int input) {
  String answer = (input % 2 == 0) ? "$input est pair" : "$input est impair";
  return answer;
}

void main(List<String> args) {
  // shoppingList("pommes", 5, 3.99);
  // print(" ");
  // print(" ");
  // dayInAWeek();
  // print(" ");
  // print(" ");
  // print("Exercice 3");
  // primitiveTypes();
  // print(" ");
  // print(" ");
  // stringToUppercase();
  // print(" ");
  // print(" ");
  // stringToLowercase();
  // print(" ");
  // print(" ");
  // accountIsGood("Elden Ring Shadow of the Erdtree sort dans une semaine");
  // expertToCall("Monster Hunter Wilds");
  // replaceLetter();
  // calcul(24, 7);
  // convertir();
  // caloricCalculation("femme", 60, 185, 35);
  // caloricCalculation("homme", 67, 183, 27);
  // caloricCalculation("non binaire", 67, 183, 27);
  // binaryOperators(10, 5);
  // comparatingOperators(9, 14);
  // deliveryFactory(false, false);
  // deliveryFactory(true, false);
  // deliveryFactory(false, true);
  // deliveryFactory(true, true);

  print(ternaryOperator(56));
  print(ternaryOperator(263));
}
