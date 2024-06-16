// Vous devez créer une fonction simple en Dart qui affiche
// "Bonjour !" sans prendre de paramètres en entrée ni
// retourner de valeur en sortie. Cette fonction devra
// être appelée ensuite.

import 'dart:math';

void greeting() {
  print("Bonjour");
}

// Vous devez créer une fonction en Dart qui prend un paramètre de 
// type chaîne de caractères (String) en entrée et affiche un message 
// personnalisé en utilisant ce paramètre.
// Cette fonction ne doit pas retourner de valeur mais contenir un 
// print pour afficher le résultat dans la console.

void functionWithParameter(String parameter) {
  print("$parameter est le paramètres de ma fonction");
}

// Vous devez créer une fonction en Dart qui prend deux paramètres de type 
// entier (int) en entrée et retourne la somme de ces deux nombres.
// Ensuite vous créez une variable resultat qui prendra comme valeur le 
// retour de la fonction créée.
// Enfin, dans un print affichez le résultat.

void addition(double a, double b){
  double result = a + b;

  print("La somme de $a + $b est $result"); 
}

// Dans cet exercice, nous allons créer une fonction fléchée 
// qui retourne la somme de deux nombres entiers.
// Vous devrez suivre les étapes ci-dessous :
// Créez une fonction fléchée nommée sum qui prend deux 
// paramètres entiers a et b.
// Dans la fonction sum, retournez la somme de a et b.
// Dans la fonction main, appelez la fonction sum 
// avec les arguments 2 et 3.
// Imprimez le résultat de la fonction sum dans la console.

int sum(int a, int b) => a + b;

// Écrivez une fonction nommée nom_complet qui prend en paramètre deux 
// chaînes de caractères nom et prenom et qui renvoie une chaîne de 
// caractères contenant le nom complet.
// Vous afficherez le résultat dans la console avec un message explicatif.

void nom_complet(String nom, String prenom){
  print("Je m'appelle $prenom $nom, $prenom est mon prénom et $nom est mon nom de famille");
}

// Vous êtes en train de développer une application de calcul et vous devez 
// créer une fonction qui permet de calculer la racine carrée d'un nombre.
// Pour cela, vous devez écrire une fonction nommée "racineCarree" qui 
// prend en paramètre un nombre "x" et retourne la valeur de la racine carrée de ce nombre.

void racineCarree(int x){
  double squareRoot = sqrt(x);
  print("La racine carrée de $x est $squareRoot");
}

// Vous êtes en train de développer une application en utilisant Flutter et Dart. 
// Vous avez besoin d'une fonction pour vérifier si une chaîne de caractères est null.
// Vous devez créer une fonction appelée "isStringNull" qui prendra un argument de type 
// String? et renverra un booléen qui sera vrai si l'argument est null, sinon il renverra faux.

bool isStringNull(String? maybeANullString){
  bool isNull = true;
  if(maybeANullString == null){
    isNull = true;
  } else {
    isNull = false;
  }
  return isNull;
} 

void main(List<String> args) {
  
  // greeting();

  // functionWithParameter("Bobby");

  // addition(8, 15);

  // print(sum(2, 3));

  // nom_complet("Belin", "Maxime");

  // racineCarree(27);


  String? nullableString = null;
  String? notNullString = "Hello World";

  print(isStringNull(nullableString));
  print(isStringNull(notNullString));
}