// Écrivez une fonction qui prend en paramètre une chaîne de caractères 
// représentant le genre d’une personne et qui affiche un message personnalisé selon le cas.
// Utilisez un switch pour gérer les différents cas possibles:
// masculin,
// féminin ou
// non genré.
// Si le paramètre ne correspond à aucun 
// de ces cas, affichez un message d’erreur.

import 'dart:math';

void whatGender(String gender){

  switch(gender){
    case "Masculin" :
      print("Je suis un homme");
      break;
    case "Féminin" :
      print("Je suis une femme");
      break;
    case "Non genré" :
      print("Je suis un casse couilles");
      break;
    default :
      print("Erreur");
  }
}

// Écrire un programme Dart qui génère aléatoirement une chaîne de caractères 
// représentant une adresse email et qui vérifie si cette adresse est valide ou non.
// Une adresse email est valide si:
// elle contient un caractère @
// suivi d’un nom de domaine avec au moins un point.

bool isEmailValid(String email){
  final bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

  return emailValid;
}

isValidMail(String email) {
  print("L'adresse email générée est: $email");
  //Couper email pour avoir le nom de domaine
  List<String> splitted = email.split("@");

  print(splitted);
  
  if (email.contains("@") && splitted.length == 2 && splitted[1].contains(".")) {
    print("Notre adresse mail est valide");
    
  } else {
    print("Notre adresse mail n'est pas valide");
  }
}

// Écrire un programme Dart qui simule le jeu du pierre feuille ciseaux 
// entre l’utilisateur et l’ordinateur. Le programme doit générer 
// aléatoirement le choix de l’utilisateur et le choix de 
// l’ordinateur parmi les trois options possibles.
// Ensuite, le programme doit afficher le résultat du jeu selon 
// les règles suivantes:
// La pierre bat les ciseaux
// La feuille bat la pierre
// Les ciseaux battent la feuille
// En cas d’égalité, il y a match nul

void stoneLeafScissors(){
  String stone = "pierres";
  String leaf = "feuilles";
  String scissors = "ciseaux";
  List<String> possibilities = [stone, leaf, scissors];
  int randomValue = Random().nextInt(3);
  int randomValue2 = Random().nextInt(3);
  String player1 = possibilities[randomValue];
  String player2 = possibilities[randomValue2]; 

  print("Joueur 1 : $player1");
  print("Joueur 2 : $player2");

  if (player1 == player2) {
    print("Egalité");
  } else if ((player1 == stone && player2 == leaf) || (player2 == stone && player1 == leaf)){
    print("La feuille l'emportes");
  } else if ((player1 == scissors && player2 == leaf) || (player2 == scissors && player1 == leaf)){
    print("Le ciseaux l'emportes");
  } else if ((player1 == stone && player2 == scissors) || (player2 == stone && player1 == scissors)){
    print("La feuille l'emportes");
  }
}

void stoneLeafScissorsCorrection(){
    // Créer une liste contenant les trois options possibles
  List<String> options = ["pierre", "feuille", "ciseaux"];
 
  // Créer un objet Random pour générer des nombres aléatoires
  Random random = new Random();
 
  // Générer aléatoirement le choix de l'utilisateur en utilisant la fonction nextInt de l'objet Random
  int userIndex = random.nextInt(3);
  String userChoice = options[userIndex];
 
  // Générer aléatoirement le choix de l'ordinateur en utilisant la fonction nextInt de l'objet Random
  int computerIndex = random.nextInt(3);
  String computerChoice = options[computerIndex];
 
  // Afficher le choix de l'utilisateur et de l'ordinateur
  print("Vous avez choisi $userChoice.");
  print("L'ordinateur a choisi $computerChoice.");
 
  // Créer une condition pour déterminer le résultat du jeu en utilisant les règles énoncées
  if (userChoice == computerChoice) {
    // Si les deux choix sont identiques, il y a match nul
    print("Match nul.");
  } else if ((userChoice == "pierre" && computerChoice == "ciseaux") ||
      (userChoice == "feuille" && computerChoice == "pierre") ||
      (userChoice == "ciseaux" && computerChoice == "feuille")) {
    // Si le choix de l'utilisateur bat le choix de l'ordinateur, l'utilisateur gagne
    print("Vous avez gagné.");
  } else {
    // Sinon, l'ordinateur gagne
    print("Vous avez perdu.");
  }
}

// Vous allez créer une fonction qui renverra une String de bienvenue selon les paramètres 
// entrés. Pour ceci vous imbriquerez les conditions entres elles.
// Les paramètres seront: name , Age et isAMan.
// Si l’utilisateur est un homme de moins de 18 ans, lui dire qu’il est un jeune garçon.
// Si l’utilisateur est un homme de 18 ans ou plus, lui dire qu’il est un homme.
// Si l’utilisateur est une femme de moins de 18 ans, lui dire qu’elle est une jeune fille.
// Si l’utilisateur est une femme de 18 ans ou plus, lui dire qu’elle est une femme.

void customGreeting(String name, int age, bool isAMan) {
  var isMajor = age >= 18;
  if (isAMan == true){
    if(isMajor){
      print("Bonjour $name, vous avez $age ans. Vous êtes un homme.");
    } else {
      print("Bonjour $name, vous avez $age ans. Vous êtes un garçon.");
    }
  } else {
    if(isMajor){
      print("Bonjour $name, vous avez $age ans. Vous êtes une femme.");
    }else{
      print("Bonjour $name, vous avez $age ans. Vous êtes une fille.");
    }
  }
}

void main(List<String> args) {
  
  // whatGender("Masculin");
  // whatGender("Féminin");
  // whatGender("Non genré");
  // whatGender("Hélicoptère de combat");


  // print(isEmailValid("maxime.b2494@gmail.com"));
  // print(isEmailValid("maxime.b24.com"));

  // isValidMail("maxweed94@gmail.com");

  // stoneLeafScissors();
  // stoneLeafScissorsCorrection();
  customGreeting("Maxime", 26, true);
  customGreeting("Kilian", 16, true);
  customGreeting("Léa", 25, false);
  customGreeting("Nina", 17, false);

}